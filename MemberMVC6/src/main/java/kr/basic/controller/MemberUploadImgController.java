package kr.basic.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

public class MemberUploadImgController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("fetch 접근 성공");
		try {
			// 드라이브 명으로 절대경로 지정하기
//			String saveDirectory = request.getServletContext().getRealPath("/Uploads");
			String saveDirectory = request.getServletContext().getInitParameter("IMG_DIR");
			System.out.println("saveDirectory : " + saveDirectory);

			// 파일 업로드하기
			String originalFileName = uploadFile(request, saveDirectory);
			System.out.println(originalFileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String uploadFile(HttpServletRequest req, String sDirectory) throws ServletException, IOException {
		// Part 객체를 통해 서버로 전송된 파일명 읽어오기
		Part part = req.getPart("uploadFile");

		// Part 객체의 헤더값 중 content-disposition 읽어오기
		String partHeader = part.getHeader("content-disposition");
		// 출력결과 => form-data; name="attachedFile"; filename="파일명.jpg"
		System.out.println("partHeader=" + partHeader);

		// 헤더값에서 파일명 잘라내기
		String[] phArr = partHeader.split("filename=");
		System.out.println(Arrays.toString(phArr));

		String originalFileName = phArr[1].trim().replace("\"", "");
		System.out.println("originalFileName=" + originalFileName);

		// 폴더 없으면 생성하기
		createDirectoryIfNotExists(sDirectory);

		// 파일이름이 있다면

		if (!originalFileName.isEmpty()) {
			Path targetPath = Paths.get(sDirectory, originalFileName);
			Files.copy(part.getInputStream(), targetPath, StandardCopyOption.REPLACE_EXISTING);
			System.out.println("targetPath =" + targetPath.toString());
		}

		// 원본 파일명 반환
		return originalFileName;
	}

	// 폴더 없으면 폴더 생성
	private static void createDirectoryIfNotExists(String directory) {

		Path dirPath = Paths.get(directory);
		if (Files.notExists(dirPath)) {
			try {
				Files.createDirectories(dirPath);
			} catch (IOException e) {
				e.printStackTrace();

			}
		}
	}
}
