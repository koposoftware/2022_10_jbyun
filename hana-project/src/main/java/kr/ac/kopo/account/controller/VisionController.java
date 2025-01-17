package kr.ac.kopo.account.controller;

import org.springframework.web.bind.annotation.RestController;

/**
 * Code sample demonstrating Cloud Vision usage within the context of Spring Framework using Spring
 * Cloud GCP libraries. The sample is written as a Spring Boot application to demonstrate a
 * practical application of this usage.
 */
@RestController
public class VisionController {
//	@Autowired private ResourceLoader resourceLoader;
//
//	  // [START spring_vision_autowire]
//	  @Autowired private CloudVisionTemplate cloudVisionTemplate;
//	  // [END spring_vision_autowire]
//
//	  /**
//	   * This method downloads an image from a URL and sends its contents to the Vision API for label
//	   * detection.
//	   *
//	   * @param imageUrl the URL of the image
//	   * @param map the model map to use
//	   * @return a string with the list of labels and percentage of certainty
//	   */
//	  
//	  @GetMapping("/vision")
//	  public String VisionTestPage() {
//		  return "account/visionTest";
//	  }
//	  
//	  @GetMapping("/extractLabels")
//	  public ModelAndView extractLabels(String imageUrl, ModelMap map) {
//	    // [START spring_vision_image_labelling]
//	    AnnotateImageResponse response =
//	        this.cloudVisionTemplate.analyzeImage(
//	            this.resourceLoader.getResource(imageUrl), Type.LABEL_DETECTION);
//
//	    Map<String, Float> imageLabels =
//	        response.getLabelAnnotationsList().stream()
//	            .collect(
//	                Collectors.toMap(
//	                    EntityAnnotation::getDescription,
//	                    EntityAnnotation::getScore,
//	                    (u, v) -> {
//	                      throw new IllegalStateException(String.format("Duplicate key %s", u));
//	                    },
//	                    LinkedHashMap::new));
//	    // [END spring_vision_image_labelling]
//
//	    map.addAttribute("annotations", imageLabels);
//	    map.addAttribute("imageUrl", imageUrl);
//
//	    return new ModelAndView("result", map);
//	  }
//
//	  @GetMapping("/extractText")
//	  public String extractText(String imageUrl) {
//	    // [START spring_vision_text_extraction]
//	    String textFromImage =
//	        this.cloudVisionTemplate.extractTextFromImage(this.resourceLoader.getResource(imageUrl));
//	    
//	    System.out.println("OCR 결과");
//	    System.out.println(textFromImage);
//	    
//	    return "Text from image: " + textFromImage;
//	    // [END spring_vision_text_extraction]
//	  }
}
