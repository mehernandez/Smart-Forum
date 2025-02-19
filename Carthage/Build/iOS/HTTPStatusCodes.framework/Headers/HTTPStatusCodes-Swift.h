// Generated by Apple Swift version 2.2 (swiftlang-703.0.18.8 clang-703.0.31)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if defined(__has_feature) && __has_feature(modules)
@import Foundation;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"

/// HTTP status codes as per http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
///
/// The RF2616 standard is completely covered (http://www.ietf.org/rfc/rfc2616.txt)
typedef SWIFT_ENUM(NSInteger, HTTPStatusCode) {
  HTTPStatusCodeContinue = 100,
  HTTPStatusCodeSwitchingProtocols = 101,
  HTTPStatusCodeProcessing = 102,
  HTTPStatusCodeOK = 200,
  HTTPStatusCodeCreated = 201,
  HTTPStatusCodeAccepted = 202,
  HTTPStatusCodeNonAuthoritativeInformation = 203,
  HTTPStatusCodeNoContent = 204,
  HTTPStatusCodeResetContent = 205,
  HTTPStatusCodePartialContent = 206,
  HTTPStatusCodeMultiStatus = 207,
  HTTPStatusCodeAlreadyReported = 208,
  HTTPStatusCodeIMUsed = 226,
  HTTPStatusCodeMultipleChoices = 300,
  HTTPStatusCodeMovedPermanently = 301,
  HTTPStatusCodeFound = 302,
  HTTPStatusCodeSeeOther = 303,
  HTTPStatusCodeNotModified = 304,
  HTTPStatusCodeUseProxy = 305,
  HTTPStatusCodeSwitchProxy = 306,
  HTTPStatusCodeTemporaryRedirect = 307,
  HTTPStatusCodePermanentRedirect = 308,
  HTTPStatusCodeBadRequest = 400,
  HTTPStatusCodeUnauthorized = 401,
  HTTPStatusCodePaymentRequired = 402,
  HTTPStatusCodeForbidden = 403,
  HTTPStatusCodeNotFound = 404,
  HTTPStatusCodeMethodNotAllowed = 405,
  HTTPStatusCodeNotAcceptable = 406,
  HTTPStatusCodeProxyAuthenticationRequired = 407,
  HTTPStatusCodeRequestTimeout = 408,
  HTTPStatusCodeConflict = 409,
  HTTPStatusCodeGone = 410,
  HTTPStatusCodeLengthRequired = 411,
  HTTPStatusCodePreconditionFailed = 412,
  HTTPStatusCodeRequestEntityTooLarge = 413,
  HTTPStatusCodeRequestURITooLong = 414,
  HTTPStatusCodeUnsupportedMediaType = 415,
  HTTPStatusCodeRequestedRangeNotSatisfiable = 416,
  HTTPStatusCodeExpectationFailed = 417,
  HTTPStatusCodeImATeapot = 418,
  HTTPStatusCodeAuthenticationTimeout = 419,
  HTTPStatusCodeUnprocessableEntity = 422,
  HTTPStatusCodeLocked = 423,
  HTTPStatusCodeFailedDependency = 424,
  HTTPStatusCodeUpgradeRequired = 426,
  HTTPStatusCodePreconditionRequired = 428,
  HTTPStatusCodeTooManyRequests = 429,
  HTTPStatusCodeRequestHeaderFieldsTooLarge = 431,
  HTTPStatusCodeLoginTimeout = 440,
  HTTPStatusCodeNoResponse = 444,
  HTTPStatusCodeRetryWith = 449,
  HTTPStatusCodeUnavailableForLegalReasons = 451,
  HTTPStatusCodeRequestHeaderTooLarge = 494,
  HTTPStatusCodeCertError = 495,
  HTTPStatusCodeNoCert = 496,
  HTTPStatusCodeHTTPToHTTPS = 497,
  HTTPStatusCodeTokenExpired = 498,
  HTTPStatusCodeClientClosedRequest = 499,
  HTTPStatusCodeInternalServerError = 500,
  HTTPStatusCodeNotImplemented = 501,
  HTTPStatusCodeBadGateway = 502,
  HTTPStatusCodeServiceUnavailable = 503,
  HTTPStatusCodeGatewayTimeout = 504,
  HTTPStatusCodeHTTPVersionNotSupported = 505,
  HTTPStatusCodeVariantAlsoNegotiates = 506,
  HTTPStatusCodeInsufficientStorage = 507,
  HTTPStatusCodeLoopDetected = 508,
  HTTPStatusCodeBandwidthLimitExceeded = 509,
  HTTPStatusCodeNotExtended = 510,
  HTTPStatusCodeNetworkAuthenticationRequired = 511,
  HTTPStatusCodeNetworkTimeoutError = 599,
};

@class NSURL;

@interface NSHTTPURLResponse (SWIFT_EXTENSION(HTTPStatusCodes))

/// Marked internal to expose (as statusCodeValue) for Objective-C interoperability only.
///
/// \returns  the receiver’s HTTP status code.
@property (nonatomic, readonly) enum HTTPStatusCode statusCodeValue;

/// Initializer for NSHTTPURLResponse objects.
///
/// \param url the URL from which the response was generated.
///
/// \param statusCode an HTTP status code.
///
/// \param HTTPVersion the version of the HTTP response as represented by the server.  This is typically represented as "HTTP/1.1".
///
/// \param headerFields a dictionary representing the header keys and values of the server response.
///
/// \returns  the instance of the object, or <code>nil
/// </code> if an error occurred during initialization.
- (nullable instancetype)initWithURL:(NSURL * _Nonnull)url statusCodeValue:(enum HTTPStatusCode)statusCode HTTPVersion:(NSString * _Nullable)HTTPVersion headerFields:(NSDictionary<NSString *, NSString *> * _Nullable)headerFields;
@end

#pragma clang diagnostic pop
