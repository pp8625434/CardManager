package com.base.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

public class OracleBlobUtil {
	public static byte[] toByteArray(Blob fromBlob) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		try {
			if (fromBlob != null) {
				byte[] buf = new byte[1000];
				InputStream is = fromBlob.getBinaryStream();
				try {
					int dataSize;
					while ((dataSize = is.read(buf)) != -1) {
						baos.write(buf, 0, dataSize);
					}
				} catch (IOException e) {
					throw new RuntimeException(e);
				} finally {
					try {
						if (is != null) {
							is.close();
						}
					} catch (IOException e) {
					}
				}
			}
			return baos.toByteArray();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (baos != null) {
					baos.close();
				}
			} catch (IOException e) {
			}
		}
	}
}
