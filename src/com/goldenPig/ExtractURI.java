package com.goldenPig;

import javax.servlet.http.HttpServletRequest;

public interface ExtractURI {
	public String extractWithExt(HttpServletRequest req);
	public String extractWithoutExt(HttpServletRequest req);
}
