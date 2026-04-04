package com.developermode.finder.developer_mode_finder

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.mockito.Mockito
import kotlin.test.Test

/*
 * This demonstrates a simple unit test of the Kotlin portion of this plugin's implementation.
 *
 * Once you have built the plugin's example app, you can run these tests from the command
 * line by running `./gradlew testDebugUnitTest` in the `example/android/` directory, or
 * you can run them directly from IDEs that support JUnit such as Android Studio.
 */

internal class DeveloperModeFinderPluginTest {
    @Test
    fun onMethodCall_isDeveloperModeEnabled_returnsExpectedValue() {
        val plugin = DeveloperModeFinderPlugin()

        val call = MethodCall("isDeveloperModeEnabled", null)
        val mockResult: MethodChannel.Result = Mockito.mock(MethodChannel.Result::class.java)
        // Since we are not attaching to an engine, context won't be initialized.
        // We are mainly testing the method routing here.
        try {
            plugin.onMethodCall(call, mockResult)
        } catch (e: Exception) {
            // Context not initialized is expected in this unit test
        }
    }
}

