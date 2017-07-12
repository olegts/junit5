/*
 * Copyright 2015-2017 the original author or authors.
 *
 * All rights reserved. This program and the accompanying materials are
 * made available under the terms of the Eclipse Public License v1.0 which
 * accompanies this distribution and is available at
 *
 * http://www.eclipse.org/legal/epl-v10.html
 */

package org.junit.mytests;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class SimpleTest {

	@Test
	@DisplayName("Simple JUnit5 test to be run by modularized JUnit5 platform")
	void test1() {
		System.out.println("Successfully passed!!!");
	}
}
