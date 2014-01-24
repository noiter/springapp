package noiter.spring;

import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

public class HomeControllerTest {

    private HomeController controller;

    @Before
    public void setUp() {
        controller = new HomeController();
    }

    @Test
    public void test_return_hello_to_front() {

        String result = controller.getContent();

        assertThat(result, is("Hello world"));
    }
}
