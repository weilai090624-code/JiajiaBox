.class public final Lio/nekohasekai/sagernet/ui/AiRoutingDomains;
.super Ljava/lang/Object;
.source "AiRoutingDomains.java"


# static fields
.field private static final RULES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd2

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "domain:openai.com"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "domain:chatgpt.com"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "domain:oaistatic.com"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "domain:oaiusercontent.com"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "domain:anthropic.com"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "domain:claude.ai"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "domain:claudeusercontent.com"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "domain:gemini.google.com"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "domain:generativelanguage.googleapis.com"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "domain:aistudio.google.com"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "domain:deepmind.google"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "domain:grok.com"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "domain:x.ai"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "domain:perplexity.ai"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "domain:pplx.ai"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "domain:copilot.microsoft.com"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "domain:copilot.cloud.microsoft"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "domain:meta.ai"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "domain:mistral.ai"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "domain:moonshot.cn"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "domain:moonshot.ai"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "domain:kimi.com"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "domain:kimi.ai"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "domain:chat.qwen.ai"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "domain:tongyi.aliyun.com"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "domain:doubao.com"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "domain:poe.com"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "domain:cohere.com"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "domain:cohere.ai"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "domain:alkalimakersuite-pa.clients6.google.com"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "domain:alkalimakersuite-pa.googleapis.com"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "domain:aisandbox-pa.googleapis.com"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "domain:cloudaicompanion.googleapis.com"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "domain:cloudcode-pa.googleapis.com"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "domain:proactivebackend-pa.googleapis.com"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "domain:generativelanguage.google.com"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "domain:makersuite.google.com"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "domain:ai.google.dev"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "domain:accounts.google.com"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "domain:oauth2.googleapis.com"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "domain:ogads-pa.clients6.google.com"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "domain:content-push.googleapis.com"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "domain:gemini.google"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "domain:notebooklm.google.com"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "domain:notebooklm.google"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "domain:notebooklm-pa.googleapis.com"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "domain:labs.google"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "domain:ai.com"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "domain:chat.com"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "domain:auth.openai.com"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "domain:openaiapi-site.azureedge.net"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "domain:featuregates.org"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "domain:statsigapi.net"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "domain:anthropicusercontent.com"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "domain:claude.com"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "domain:console.anthropic.com"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "domain:api.x.ai"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "domain:perplexity.com"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "domain:perplexityusercontent.com"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "domain:copilot.live.com"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "domain:sydney.bing.com"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "domain:edgeservices.bing.com"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "domain:services.bingapis.com"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "domain:ai.azure.com"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "domain:chat.mistral.ai"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "domain:lechat.mistral.ai"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "domain:chatglm.cn"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "domain:bigmodel.cn"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "domain:z.ai"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "domain:zhipuai.cn"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "domain:qwen.ai"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "domain:dashscope.aliyuncs.com"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "domain:volces.com"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "domain:byteoversea.com"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "domain:manus.im"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "domain:manus.ai"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "domain:cursor.com"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "domain:cursor.sh"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "domain:cursorapi.com"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "domain:windsurf.com"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "domain:codeium.com"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "domain:codeiumdata.com"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "domain:githubcopilot.com"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "domain:copilot-proxy.githubusercontent.com"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "domain:api.individual.githubcopilot.com"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "domain:api.business.githubcopilot.com"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "domain:api.enterprise.githubcopilot.com"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "domain:robinfrontend-pa.googleapis.com"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "domain:subscriptionsfirstparty-pa.googleapis.com"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "domain:signaler-pa.googleapis.com"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "domain:chatgpt.livekit.cloud"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "domain:chatgpt.site"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "domain:oaistatsig.com"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "domain:openai.com.cdn.cloudflare.net"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "domain:sora.com"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "full:o33249.ingest.sentry.io"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "full:openai.qualtrics.com"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "full:openaiassets.blob.core.windows.net"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "full:openaicom-api-bdcpf8c6d2e9atf6.z01.azurefd.net"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "full:openaicom.imgix.net"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "full:openaicomproductionae4b.blob.core.windows.net"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "full:production-openaicom-storage.azureedge.net"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "regexp:^chatgpt-async-webps-prod-\\S+-\\d+\\.webpubsub\\.azure\\.com$"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "domain:clau.de"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "domain:claude.dev"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "domain:claudemcpclient.com"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "domain:claudemcpcontent.com"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "full:servd-anthropic-website.b-cdn.net"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "domain:ai.studio"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "domain:aicode.googleapis.com"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "domain:aida.googleapis.com"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "domain:antigravity-unleash.goog"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "domain:antigravity.google"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "domain:bard.google.com"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "domain:deepmind.com"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "domain:flow.google"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "domain:flow.google.com"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "domain:geller-pa.googleapis.com"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "domain:gemini.gstatic.com"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "domain:generativeai.google"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "domain:jules.google"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "domain:jules.google.com"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "domain:labs.google.com"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "domain:labstailwind.pa.googleapis.com"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "domain:notebook.google"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "domain:notebook.google.com"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "domain:opal.google"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "domain:opal.google.com"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "domain:stitch.withgoogle.com"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "full:alkalicore-pa.clients6.google.com"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "full:antigravity-pa.googleapis.com"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "full:antigravity.googleapis.com"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "full:daily-cloudcode-pa.googleapis.com"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "full:geminiweb-pa.clients.google.com"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "full:geminiweb-pa.clients6.google.com"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "full:notebooklm.googleapis.com"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "full:webchannel-alkalimakersuite-pa.clients6.google.com"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "full:copilot-telemetry-service.githubusercontent.com"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "full:copilot-telemetry.githubusercontent.com"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "full:copilot-workspace.githubnext.com"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "full:copilotprodattachments.blob.core.windows.net"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "domain:cursor-cdn.com"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "domain:windsurf.build"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "full:ppl-ai-file-upload.s3.amazonaws.com"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "full:pplx-res.cloudinary.com"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "domain:api-building.fun"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "domain:building.fun"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "domain:butterfly-static.cn"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "domain:butterflyai.cn"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "domain:coze-dns-01.com"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "domain:coze.cn"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "domain:coze.email"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "domain:coze.site"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "domain:cozeapp.net"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "domain:cozebaas.cn"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "domain:cozebuild.com"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "domain:cozecdn.com"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "domain:cozedeploy.com"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "domain:cozefn.cn"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "domain:cozeide.cn"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "domain:cozesdk.com"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "domain:cozetest.cn"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "domain:cozetest2.cn"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "domain:cozetest3.cn"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "domain:dbbuilding.fun"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "domain:doubao-dev.com"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "domain:doubaocdn.com"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "domain:hi-butterfly.cn"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "domain:instreet.com"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "domain:maoxiangai.com"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "domain:myparallelstory.com"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "domain:obriccloud.com"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "domain:obricclouddw.com"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "domain:oceancloudapi.com"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "domain:picpic-ai.cn"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "domain:pixeldance.com"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "domain:manuscdn.com"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "domain:elevenlabs.com"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "domain:elevenlabs.io"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "domain:hf.co"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "domain:hf.space"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "domain:huggingface.co"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "domain:copilot.com"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "domain:copilot-stg.com"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "domain:poecdn.net"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "domain:grok.x.com"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "domain:grokipedia.com"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "domain:metaaivm.com"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "domain:qwenlm.ai"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "domain:qianwen.com"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "domain:qianwenai.com"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "domain:qianwen.aliyun.com"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "domain:tongyi.com"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "domain:hunyuan.tencent.com"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "domain:yuanbao.tencent.com"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "domain:yuanqi.tencent.com"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "domain:yiyan.baidu.com"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "domain:xinghuo.xfyun.cn"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "domain:minimax.io"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "domain:minimaxi.com"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "domain:hailuoai.com"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "domain:klingai.com"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "domain:kling-ai.com"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "domain:midjourney.com"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "domain:openrouter.ai"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "domain:coze.com"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "domain:suno.com"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "domain:suno.ai"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "domain:runwayml.com"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "domain:runway.com"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    sput-object v0, Lio/nekohasekai/sagernet/ui/AiRoutingDomains;->RULES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rules()Ljava/lang/String;
    .registers 6

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    sget-object v1, Lio/nekohasekai/sagernet/ui/AiRoutingDomains;->RULES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_18

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 223
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
