.class public Lcom/pingan/main/GlobalVarHolder;
.super Ljava/lang/Object;
.source "GlobalVarHolder.java"


# static fields
.field public static DEFAULT_SMALL_VIDEO_HEIGHT:I = 0x0

.field public static DEFAULT_SMALL_VIDEO_WIDTH:I = 0x0

.field public static DEFAULT_VIDEO_CODEC_FPS:I = 0x0

.field public static DEFAULT_VIDEO_CODEC_HEIGHT:I = 0x0

.field public static DEFAULT_VIDEO_CODEC_HEIGHT_PAD:I = 0x0

.field public static DEFAULT_VIDEO_CODEC_WIDTH:I = 0x0

.field public static DEFAULT_VIDEO_CODEC_WIDTH_PAD:I = 0x0

.field public static DEFAULT_VIDEO_MAX_BITS:I = 0x0

.field public static final IN_BOUND:Ljava/lang/String; = "inbound"

.field public static MCP_URL_PRD:Ljava/lang/String; = null

.field public static MCP_URL_STG:Ljava/lang/String; = null

.field public static final OUT_BOUND:Ljava/lang/String; = "outbound"

.field public static SBCDomain:Ljava/lang/String; = null

.field public static SBCIP:Ljava/lang/String; = null

.field public static SBCPort:Ljava/lang/String; = null

.field public static UUID:Ljava/lang/String; = null

.field public static final VIDEO:Ljava/lang/String; = "video"

.field public static final VOICE:Ljava/lang/String; = "voice"

.field public static account:Ljava/lang/String;

.field public static callFrom:Ljava/lang/String;

.field public static callTo:Ljava/lang/String;

.field public static deviceType:I

.field public static password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x280

    const/16 v0, 0x1e0

    .line 42
    sput v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH_PAD:I

    .line 43
    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT_PAD:I

    .line 44
    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_WIDTH:I

    .line 45
    sput v1, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_HEIGHT:I

    .line 47
    const/16 v0, 0xf

    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_CODEC_FPS:I

    .line 48
    const/16 v0, 0x12c

    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_VIDEO_MAX_BITS:I

    .line 50
    const/16 v0, 0xf0

    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_WIDTH:I

    .line 51
    const/16 v0, 0x140

    sput v0, Lcom/pingan/main/GlobalVarHolder;->DEFAULT_SMALL_VIDEO_HEIGHT:I

    .line 61
    const-string v0, "http://test1-mcp-core.pingan.com.cn:44484/mcp-core-portal/"

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->MCP_URL_STG:Ljava/lang/String;

    .line 62
    const-string v0, "https://mcp-core.pingan.com.cn/mcp-core-portal/"

    sput-object v0, Lcom/pingan/main/GlobalVarHolder;->MCP_URL_PRD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
