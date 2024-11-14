class NetworkConstant {
  NetworkConstant._();

  // static const String baseUrl = "https://dev-api-fhb.quartustech.com/v1";
  // static const String baseUrlAPI = "/api";

  static const String authorization = "Authorization";
  static const String bearer = "Bearer ";

  static const String googleAPIKey = "AIzaSyDsiT9JYzSYVYn9BIuHiuoKVnT-rwhJJCo";

  // Authentication
  static const String signIn = "users/sign-in";
  static const String signOut = "users/sign-out";
  static const String deleteAccount = "users/";
  static const String appConfig = "app/config";
  static const String checkUsername = "users/cognito/username/available";
  static const String userTaggingSearch = "users/tagging/search";

  // Home
  static const String getHome = "posts/home";

  // On Boarding
  static const String getJoiningCause = "users/joining-cause";
  static const String getHealthTopic = "posts/health-topic-categories";
  static const String updateOnboardingData = "users/onboarding";
  static const String updateOnboardingStatus = "users/update";
  static const String getExpertiseOptions = "users/expertise-options";
  static const String getStoryTemplates = "posts/story-templates";
  static const String getStaticData = "app/static/data";

  // User Profile
  static const String profile = "users/profile";
  static const String publicInfo = "users/public-info/";
  static const String profileUpdate = "users/update";
  static const String myPosts = "posts/my-posts";
  static const String posts = "posts/";
  static const String followings = "users/followings/";
  static const String followers = "users/followers/";
  static const String followUnfollowUser = "users/follow-unfollow";
  static const String userSearch = "users/search";
  static const String blockedUsers = "users/blocked-users";
  static const String mutedUsers = "users/muted-users";
  static const String userNotInterested = "users/feed-preference";
  static const String muteUnmuteUser = "users/mute-unmute";
  static const String blockUnblockUser = "users/block-unblock";
  static const String reportUser = "users/report";

  // Business Info
  static const String businessInfo = "users/business/";

  // Notifications
  static const String registerDeviceForNotifications =
      "users/register-user-device-token";
  static const String getAllNotifications = "notifications/all-notifications";
  static const String markAllNotificationAsRead =
      "notifications/mark-all-notification-as-read";
  static const String clearAllNotification =
      "notifications/clear-all-notifications";
  static const String readOrDeleteNotification = "notifications";

  // Posts
  static const String createPost = "posts/create";
  static const String getLikeTypes = "posts/like-types";
  static const String likeUnlikePost = "posts/like-unlike";
  static const String getPostLikes = "posts/likes";
  static const String postComment = "posts/comment";
  static const String reportPost = "posts/report";

  // Offer
  static const String createOffer = "yolo/create";
  static const String getOfferList = "yolo/list";
  static const String getMyOfferList = "yolo/my-offer";
  static const String getYoloProductCategories = "yolo/product-category";
  static const String getMyAppliedOffers = "yolo/my-applied-offer";
  static const String sendOfferRequest = "yolo/send-request";
  static const String myOfferInterested = "yolo/my-offer-interested/";
  static const String acceptOffer = "yolo/accept-offer/";
  static const String rejectOffer = "yolo/reject-offer/";

  // Offer Details
  static const getOfferDetails = 'yolo/details/';

  // Events
  static const String createEvent = "events/create";
  static const String getEventList = "events/list";
  static const String getUsersEventList = "events/user-events/";
  static const String getEventDetails = "events/details/";
  static const String sendRequestToEvent = "events/interested/";
  static const String userInterestedInEvent = "events/event-interested-users/";

  // Service
  static const String createService = "yolo/service";
  static const String getPractitionersList = "yolo/practitioners-list";
  static const String getPractitionersServices = "yolo/practitioner-services/";

  // Crash Report
  static const crashReport = 'app/mobile/crash';

  // T & C
  static const String termsAndCondition =
      "https://dev-api-fhb.quartustech.com/fhb-terms-and-conditions";

  // Privacy Policy
  static const String privacyPolicy =
      "https://dev-api-fhb.quartustech.com/fhb-privacy-policy";
}
