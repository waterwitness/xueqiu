.class public Lcom/bairuitech/anychat/AnyChatCoreSDK;
.super Ljava/lang/Object;
.source "AnyChatCoreSDK.java"


# static fields
.field public static i:Lcom/bairuitech/anychat/f;

.field public static j:Lcom/bairuitech/anychat/a;

.field public static k:Lcom/bairuitech/anychat/e;

.field private static n:Lcom/bairuitech/anychat/AnyChatCoreSDK;

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I


# instance fields
.field public a:Lcom/bairuitech/anychat/d;

.field b:Lcom/bairuitech/anychat/k;

.field c:Lcom/bairuitech/anychat/h;

.field d:Lcom/bairuitech/anychat/l;

.field public e:Lcom/bairuitech/anychat/m;

.field public f:Lcom/bairuitech/anychat/o;

.field g:Lcom/bairuitech/anychat/n;

.field h:Lcom/bairuitech/anychat/i;

.field public l:Lcom/bairuitech/anychat/j;

.field public m:Lcom/bairuitech/anychat/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->n:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 27
    sput-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->i:Lcom/bairuitech/anychat/f;

    .line 28
    new-instance v0, Lcom/bairuitech/anychat/a;

    invoke-direct {v0}, Lcom/bairuitech/anychat/a;-><init>()V

    sput-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    .line 29
    new-instance v0, Lcom/bairuitech/anychat/e;

    invoke-direct {v0}, Lcom/bairuitech/anychat/e;-><init>()V

    sput-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->o:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->p:I

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->q:I

    .line 36
    const/4 v0, 0x4

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->r:I

    .line 37
    const/4 v0, 0x5

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->s:I

    .line 38
    const/4 v0, 0x6

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->t:I

    .line 39
    const/4 v0, 0x7

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->u:I

    .line 40
    const/16 v0, 0x8

    sput v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->v:I

    .line 637
    const-string v0, "audio_preprocessing"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 638
    const-string v0, "mediacore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 639
    const-string v0, "anychatcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bairuitech/anychat/j;

    invoke-direct {v0}, Lcom/bairuitech/anychat/j;-><init>()V

    iput-object v0, p0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->l:Lcom/bairuitech/anychat/j;

    .line 31
    new-instance v0, Lcom/bairuitech/anychat/p;

    invoke-direct {v0}, Lcom/bairuitech/anychat/p;-><init>()V

    iput-object v0, p0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    .line 386
    return-void
.end method

.method public static native FetchAudioPlayBuffer(I)[B
.end method

.method public static native GetSDKOptionInt(I)I
.end method

.method public static native InputAudioData([BII)I
.end method

.method public static native InputVideoData([BII)I
.end method

.method public static native SetInputAudioFormat(IIII)I
.end method

.method public static native SetInputVideoFormat(IIIII)I
.end method

.method public static native SetSDKOptionInt(II)I
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->o:I

    return v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->p:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->q:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->r:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->s:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->t:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->u:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 13
    sget v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->v:I

    return v0
.end method


# virtual methods
.method public native Connect(Ljava/lang/String;I)I
.end method

.method public native EnterRoom(ILjava/lang/String;)I
.end method

.method public native EnumVideoCapture()[Ljava/lang/String;
.end method

.method public native GetCameraState(I)I
.end method

.method public native GetCurVideoCapture()Ljava/lang/String;
.end method

.method public native GetUserSpeakVolume(I)I
.end method

.method public native GetUserVideoHeight(I)I
.end method

.method public native GetUserVideoWidth(I)I
.end method

.method public native InitSDK(II)I
.end method

.method public native LeaveRoom(I)I
.end method

.method public native Login(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native Logout()I
.end method

.method public native QueryUserStateString(II)Ljava/lang/String;
.end method

.method public native RegisterNotify()I
.end method

.method public native Release()I
.end method

.method public native SelectVideoCapture(Ljava/lang/String;)I
.end method

.method public native SetVideoPos(ILandroid/view/Surface;IIII)I
.end method

.method public native UserCameraControl(II)I
.end method

.method public native UserSpeakControl(II)I
.end method

.method public native VideoCallControl(IIIIILjava/lang/String;)I
.end method
