.class public Lcom/kwlopen/sdk/activity/VideoVitness;
.super Landroid/app/Activity;
.source "VideoVitness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/bairuitech/anychat/d;
.implements Lcom/bairuitech/anychat/m;
.implements Lcom/bairuitech/anychat/o;


# static fields
.field public static final MSG_CHAT_GONE:I = 0x21

.field public static final MSG_CHECKAV:I = 0x1

.field public static final MSG_SESSIONEND:I = 0x22

.field public static final MSG_TIMEUPDATE:I = 0x2

.field public static final PROGRESSBAR_HEIGHT:I = 0x5


# instance fields
.field private anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

.field private anychatServerAddr:Ljava/lang/String;

.field private anychatServerPort:I

.field private bLogined:Z

.field bNormal:Z

.field bOtherVideoOpened:Z

.field bSelfVideoOpened:Z

.field bVideoViewLoaded:Z

.field private configEntity:Lcom/bairuitech/b/b;

.field private dialog:Landroid/app/Dialog;

.field dwTargetUserId:I

.field private handler:Landroid/os/Handler;

.field private loginTimer:Ljava/util/Timer;

.field private mBtnEndSession:Landroid/widget/Button;

.field private mBtnSwitch:Landroid/view/View;

.field mCurrentLength:F

.field mCurrentRate:F

.field private mHandler:Landroid/os/Handler;

.field mIsFirst:Z

.field mOriginalLength:F

.field private mProgressNotice:Landroid/widget/ProgressBar;

.field private mProgressRemote:Landroid/widget/ProgressBar;

.field private mProgressSelf:Landroid/widget/ProgressBar;

.field private mSurfaceRemote:Landroid/view/SurfaceView;

.field private mSurfaceSelf:Landroid/view/SurfaceView;

.field private mTImerShowVidoTime:Ljava/util/Timer;

.field private mTimerCheckAv:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTxtTime:Landroid/widget/TextView;

.field private mobileTel:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field videoAreaHeight:I

.field videoAreaWidth:I

.field videoIndex:I

.field private video_status:I

.field videocallSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-boolean v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bSelfVideoOpened:Z

    .line 73
    iput-boolean v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bOtherVideoOpened:Z

    .line 75
    iput-boolean v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bVideoViewLoaded:Z

    .line 81
    iput-boolean v4, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mIsFirst:Z

    .line 82
    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mOriginalLength:F

    .line 83
    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mCurrentLength:F

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mCurrentRate:F

    .line 86
    iput v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoAreaWidth:I

    .line 87
    iput v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoAreaHeight:I

    .line 88
    iput v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    .line 89
    iput v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    .line 90
    iput v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videocallSeconds:I

    .line 91
    iput-boolean v4, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bNormal:Z

    .line 93
    iput v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    .line 95
    iput-object v3, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;

    .line 97
    iput-boolean v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bLogined:Z

    .line 99
    iput v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerPort:I

    .line 100
    iput-object v3, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mobileTel:Ljava/lang/String;

    .line 101
    iput-object v3, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerAddr:Ljava/lang/String;

    .line 894
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoVitness$9;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$9;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->handler:Landroid/os/Handler;

    return-void
.end method

.method private ApplyVideoConfig()V
    .locals 3

    .prologue
    .line 153
    invoke-static {p0}, Lcom/bairuitech/b/c;->a(Landroid/content/Context;)Lcom/bairuitech/b/b;

    move-result-object v0

    .line 154
    iget v1, v0, Lcom/bairuitech/b/b;->f:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 157
    const/16 v1, 0x1e

    iget v2, v0, Lcom/bairuitech/b/b;->i:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 158
    iget v1, v0, Lcom/bairuitech/b/b;->i:I

    if-nez v1, :cond_0

    .line 160
    const/16 v1, 0x1f

    iget v2, v0, Lcom/bairuitech/b/b;->k:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 163
    :cond_0
    const/16 v1, 0x21

    iget v2, v0, Lcom/bairuitech/b/b;->j:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 165
    const/16 v1, 0x20

    iget v2, v0, Lcom/bairuitech/b/b;->j:I

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 167
    const/16 v1, 0x26

    iget v2, v0, Lcom/bairuitech/b/b;->g:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 168
    const/16 v1, 0x27

    iget v2, v0, Lcom/bairuitech/b/b;->h:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 170
    const/16 v1, 0x22

    iget v2, v0, Lcom/bairuitech/b/b;->l:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 173
    :cond_1
    const/16 v1, 0x23

    iget v2, v0, Lcom/bairuitech/b/b;->f:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 175
    const/16 v1, 0x28

    iget v2, v0, Lcom/bairuitech/b/b;->r:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 177
    const/16 v1, 0x5c

    iget v2, v0, Lcom/bairuitech/b/b;->m:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 179
    const/4 v1, 0x3

    iget v2, v0, Lcom/bairuitech/b/b;->t:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 181
    const/16 v1, 0x12

    iget v2, v0, Lcom/bairuitech/b/b;->u:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 183
    const/16 v1, 0x5e

    iget v2, v0, Lcom/bairuitech/b/b;->n:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 185
    const/16 v1, 0x60

    iget v2, v0, Lcom/bairuitech/b/b;->o:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 187
    const/16 v1, 0x54

    iget v2, v0, Lcom/bairuitech/b/b;->p:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 190
    const/16 v1, 0x62

    iget v2, v0, Lcom/bairuitech/b/b;->q:I

    invoke-static {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 193
    const/16 v1, 0x55

    iget v0, v0, Lcom/bairuitech/b/b;->q:I

    invoke-static {v1, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 194
    return-void
.end method

.method private CheckVideoStatus()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x53

    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bOtherVideoOpened:Z

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetCameraState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoWidth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceRemote:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 457
    invoke-static {v9}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v1

    if-eq v1, v8, :cond_0

    .line 459
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 460
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v1, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v2, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoHeight(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 462
    :cond_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 463
    invoke-static {v9}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 465
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/p;->a(II)V

    .line 468
    :goto_0
    iput-boolean v10, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bOtherVideoOpened:Z

    .line 471
    :cond_1
    iget-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bSelfVideoOpened:Z

    if-nez v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetCameraState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoWidth(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceSelf:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 474
    invoke-static {v9}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v1

    if-eq v1, v8, :cond_2

    .line 476
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 477
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v1, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v2, v7}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserVideoHeight(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 479
    :cond_2
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 480
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    move v1, v7

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetVideoPos(ILandroid/view/Surface;IIII)I

    .line 481
    iput-boolean v10, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bSelfVideoOpened:Z

    .line 485
    :cond_3
    return-void

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetVideoPos(ILandroid/view/Surface;IIII)I

    goto :goto_0
.end method

.method private Login()V
    .locals 3

    .prologue
    .line 804
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerAddr:Ljava/lang/String;

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerPort:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Connect(Ljava/lang/String;I)I

    .line 805
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mobileTel:Ljava/lang/String;

    const-string v2, "C|123456"

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Login(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->startLoginTimer()V

    .line 808
    return-void
.end method

.method private ShowEndSessionResumeDialg()V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 768
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    const-string v1, "\u89c6\u9891\u89c1\u8bc1"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 770
    const-string v1, "kwlopen_str_endsession"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 771
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/kwlopen/sdk/activity/VideoVitness$6;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$6;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/kwlopen/sdk/activity/VideoVitness$7;

    invoke-direct {v2, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$7;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    .line 799
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 800
    return-void
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->CheckVideoStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->updateVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/kwlopen/sdk/activity/VideoVitness;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTxtTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kwlopen/sdk/activity/VideoVitness;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kwlopen/sdk/activity/VideoVitness;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    return v0
.end method

.method static synthetic access$500(Lcom/kwlopen/sdk/activity/VideoVitness;)Lcom/bairuitech/anychat/AnyChatCoreSDK;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kwlopen/sdk/activity/VideoVitness;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private initSdk()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-direct {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 254
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->InitSDK(II)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 1053
    new-instance v3, Lcom/bairuitech/anychat/f;

    invoke-direct {v3, v0}, Lcom/bairuitech/anychat/f;-><init>(Lcom/bairuitech/anychat/AnyChatCoreSDK;)V

    sput-object v3, Lcom/bairuitech/anychat/AnyChatCoreSDK;->i:Lcom/bairuitech/anychat/f;

    .line 1054
    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->RegisterNotify()I

    .line 1055
    iput-object p0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->a:Lcom/bairuitech/anychat/d;

    .line 257
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 1084
    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->RegisterNotify()I

    .line 1085
    iput-object p0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->f:Lcom/bairuitech/anychat/o;

    .line 258
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 2078
    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->RegisterNotify()I

    .line 2079
    iput-object p0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->e:Lcom/bairuitech/anychat/m;

    .line 259
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v3, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->l:Lcom/bairuitech/anychat/j;

    .line 3024
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-lt v0, v5, :cond_2

    const/4 v0, 0x2

    .line 3026
    :goto_0
    const/16 v4, 0x67

    invoke-static {v4, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 3028
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3029
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 3031
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 3037
    :goto_1
    const/16 v2, 0x63

    invoke-static {v2, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SetSDKOptionInt(II)I

    .line 3039
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    .line 4037
    iput-object p0, v0, Lcom/bairuitech/anychat/e;->g:Landroid/content/Context;

    .line 3040
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->j:Lcom/bairuitech/anychat/a;

    .line 5037
    iput-object p0, v0, Lcom/bairuitech/anychat/a;->i:Landroid/content/Context;

    .line 3042
    iget-object v0, v3, Lcom/bairuitech/anychat/j;->a:Lcom/bairuitech/anychat/g;

    if-nez v0, :cond_1

    .line 3043
    new-instance v0, Lcom/bairuitech/anychat/g;

    invoke-direct {v0, p0}, Lcom/bairuitech/anychat/g;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/bairuitech/anychat/j;->a:Lcom/bairuitech/anychat/g;

    .line 3045
    :cond_1
    iget-object v0, v3, Lcom/bairuitech/anychat/j;->a:Lcom/bairuitech/anychat/g;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/g;->enable()V

    .line 3047
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 3049
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 3051
    invoke-virtual {v0, v3, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 260
    return-void

    :cond_2
    move v0, v1

    .line 3024
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 3032
    goto :goto_1

    .line 3033
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 3034
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    .line 3035
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 3031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initTimerCheckAv()V
    .locals 6

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerCheckAv:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerCheckAv:Ljava/util/Timer;

    .line 279
    :cond_0
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoVitness$3;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$3;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerTask:Ljava/util/TimerTask;

    .line 287
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerCheckAv:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 288
    return-void
.end method

.method private initTimerShowTime()V
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTImerShowVidoTime:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTImerShowVidoTime:Ljava/util/Timer;

    .line 265
    :cond_0
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoVitness$2;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$2;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerTask:Ljava/util/TimerTask;

    .line 273
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTImerShowVidoTime:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 274
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/16 v6, 0x5f

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 301
    const-string v0, "kwlopen_video_activity"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setContentView(I)V

    .line 302
    const-string v0, "kwlopen_surface_local"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceSelf:Landroid/view/SurfaceView;

    .line 303
    const-string v0, "kwlopen_surface_remote"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceRemote:Landroid/view/SurfaceView;

    .line 304
    const-string v0, "kwlopen_progress_local"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressSelf:Landroid/widget/ProgressBar;

    .line 305
    const-string v0, "kwlopen_progress_remote"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressRemote:Landroid/widget/ProgressBar;

    .line 306
    const-string v0, "kwlopen_mProgressNotice"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressNotice:Landroid/widget/ProgressBar;

    .line 307
    const-string v0, "kwlopen_btn_switch"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnSwitch:Landroid/view/View;

    .line 308
    const-string v0, "kwlopen_txt_time"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTxtTime:Landroid/widget/TextView;

    .line 309
    const-string v0, "kwlopen_btn_endsession"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnEndSession:Landroid/widget/Button;

    .line 310
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnEndSession:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnSwitch:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceRemote:Landroid/view/SurfaceView;

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setTag(Ljava/lang/Object;)V

    .line 313
    invoke-static {p0}, Lcom/bairuitech/b/c;->a(Landroid/content/Context;)Lcom/bairuitech/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->configEntity:Lcom/bairuitech/b/b;

    .line 314
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->configEntity:Lcom/bairuitech/b/b;

    iget v0, v0, Lcom/bairuitech/b/b;->m:I

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceSelf:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceSelf:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 320
    invoke-static {v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 321
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceSelf:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sget-object v2, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 322
    const-string v0, "ANYCHAT"

    const-string v2, "VIDEOCAPTRUE---JAVA"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    const/16 v0, 0x53

    .line 327
    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 328
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceRemote:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bairuitech/anychat/p;->a(Landroid/view/SurfaceHolder;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    .line 329
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    iget v3, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/bairuitech/anychat/p;->a(II)V

    .line 330
    const-string v0, "ANYCHAT"

    const-string v2, "VIDEOSHOW---JAVA"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2
    const-string v0, "kwlopen_frame_local_area"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/kwlopen/sdk/activity/VideoVitness$4;

    invoke-direct {v3, p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness$4;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 348
    invoke-static {v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 349
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    invoke-static {}, Lcom/bairuitech/anychat/e;->b()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 350
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnSwitch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    sget-object v2, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    .line 5210
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 5212
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 5213
    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5214
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v5, :cond_5

    .line 5215
    iput v0, v2, Lcom/bairuitech/anychat/e;->d:I

    .line 369
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 370
    invoke-virtual {p0, v5}, Lcom/kwlopen/sdk/activity/VideoVitness;->adjustLocalVideo(Z)V

    .line 376
    :cond_4
    :goto_2
    return-void

    .line 5210
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->EnumVideoCapture()[Ljava/lang/String;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_3

    array-length v0, v2

    if-le v0, v5, :cond_3

    .line 357
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnSwitch:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 359
    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 360
    aget-object v3, v2, v0

    .line 361
    const-string v4, "Front"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_7

    .line 362
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SelectVideoCapture(Ljava/lang/String;)I

    goto :goto_1

    .line 359
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 371
    :cond_8
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_4

    .line 372
    invoke-virtual {p0, v1}, Lcom/kwlopen/sdk/activity/VideoVitness;->adjustLocalVideo(Z)V

    goto :goto_2
.end method

.method private startLoginTimer()V
    .locals 4

    .prologue
    .line 812
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;

    .line 813
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoVitness$8;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$8;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    .line 823
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 824
    return-void
.end method

.method private stopLoginTimer()V
    .locals 1

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->loginTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateVolume()V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressSelf:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserSpeakVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 489
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressRemote:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetUserSpeakVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 490
    return-void
.end method


# virtual methods
.method public OnAnyChatConnectMessage(Z)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 494
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnAnyChatConnectMessage---"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez p1, :cond_0

    .line 497
    const-string v0, "\u89c6\u9891\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bLogined:Z

    .line 500
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressNotice:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 503
    const-string v1, "errcode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    const-string v1, "errmsg"

    const-string v2, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 506
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 507
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    .line 509
    :cond_0
    return-void
.end method

.method public OnAnyChatEnterRoomMessage(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 548
    if-nez p2, :cond_0

    .line 549
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 550
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 551
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 552
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bSelfVideoOpened:Z

    .line 555
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->initTimerShowTime()V

    .line 557
    :cond_0
    return-void
.end method

.method public OnAnyChatLinkCloseMessage(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 595
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnAnyChatLinkCloseMessage -- >"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3, v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 598
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3, v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 599
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 600
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 601
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->LeaveRoom(I)I

    .line 603
    const-string v0, "ac_serverlink_close"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 605
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 606
    const-string v1, "errcode"

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    const-string v1, "errmsg"

    const-string v2, "ac_serverlink_close"

    invoke-static {p0, v2}, Lcom/b/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 609
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 610
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    .line 611
    return-void
.end method

.method public OnAnyChatLoginMessage(II)V
    .locals 3

    .prologue
    .line 515
    if-nez p2, :cond_1

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bLogined:Z

    .line 518
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopLoginTimer()V

    .line 519
    sput p1, Lcom/bairuitech/a/a;->f:I

    .line 520
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "anychat userID --->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    .line 5220
    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->QueryUserStateString(II)Ljava/lang/String;

    move-result-object v0

    .line 521
    sput-object v0, Lcom/bairuitech/a/a;->h:Ljava/lang/String;

    .line 525
    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bairuitech/a/a;->a(ILjava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 531
    const-string v0, "ac_lggin_failed"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bLogined:Z

    .line 534
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressNotice:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 536
    const-string v1, "errcode"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v1, "errmsg"

    const-string v2, "\u767b\u5f55\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 539
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 540
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    goto :goto_0
.end method

.method public OnAnyChatOnlineUserMessage(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 562
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 563
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bOtherVideoOpened:Z

    .line 565
    return-void
.end method

.method public OnAnyChatSDKFilterData([BI)V
    .locals 0

    .prologue
    .line 892
    return-void
.end method

.method public OnAnyChatTransBuffer(I[BI)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 848
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gb2312"

    invoke-direct {v0, p2, v1, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 849
    const-class v1, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 851
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x13ec

    if-ne v1, v2, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 854
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    .line 855
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 856
    const-string v2, "errcode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    if-ne v2, v6, :cond_0

    .line 859
    const-string v2, "errmsg"

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    :cond_0
    const-string v0, "flag"

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 865
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    :cond_1
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 871
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 872
    iput v5, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    .line 873
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 874
    const-string v1, "errcode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    const-string v1, "flag"

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0, v5, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 877
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    goto :goto_0
.end method

.method public OnAnyChatTransBufferEx(I[BIIII)V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public OnAnyChatTransFile(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 842
    return-void
.end method

.method public OnAnyChatUserAtRoomMessage(IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 570
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 571
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bOtherVideoOpened:Z

    .line 574
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    if-ne p1, v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mProgressNotice:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 578
    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    if-ne p1, v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->LeaveRoom(I)I

    .line 581
    const-string v0, "ac_serverlink_close"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 583
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 584
    const-string v1, "errcode"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v1, "errmsg"

    const-string v2, "\u5750\u5e2d\u9000\u51fa\u623f\u95f4\uff0c\u8bf7\u91cd\u65b0\u8ba4\u8bc1\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 587
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 588
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    .line 591
    :cond_1
    return-void
.end method

.method public OnAnyChatVideoCallEvent(IIIIILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 653
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/bairuitech/a/a;->a()Lcom/bairuitech/a/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bairuitech/a/a;->a(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_1
    if-eqz p3, :cond_0

    goto :goto_0

    .line 658
    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 659
    const-string v1, "errcode"

    const/4 v2, -0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    const-string v1, "errmsg"

    const-string v2, "\u5750\u5e2d\u610f\u5916\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8ba4\u8bc1\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v1, "flag"

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->video_status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 663
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    goto :goto_1

    .line 681
    :pswitch_1
    invoke-static {}, Lcom/bairuitech/a/a;->a()Lcom/bairuitech/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bairuitech/a/a;->b()V

    .line 687
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    const-string v1, ""

    invoke-virtual {v0, p5, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->EnterRoom(ILjava/lang/String;)I

    goto :goto_0

    .line 691
    :pswitch_2
    invoke-static {}, Lcom/bairuitech/a/a;->a()Lcom/bairuitech/a/a;

    invoke-static {}, Lcom/bairuitech/a/a;->c()V

    .line 693
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 694
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 695
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 696
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 697
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v3}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->LeaveRoom(I)I

    .line 698
    if-eqz p3, :cond_1

    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 701
    const-string v1, "errcode"

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v1, "errmsg"

    const-string v2, "\u5750\u5e2d\u610f\u5916\u9000\u51fa\uff0c\u8bf7\u91cd\u65b0\u8ba4\u8bc1\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v3, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->setResult(ILandroid/content/Intent;)V

    .line 705
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->stopTimer()V

    .line 706
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->finish()V

    goto :goto_0

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->startTimer()V

    .line 710
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dwErrorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public adjustLocalVideo(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x27

    const/16 v4, 0x26

    const/high16 v5, 0x40a00000    # 5.0f

    .line 408
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 409
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 410
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v3, v0, v1

    .line 411
    const-string v0, "kwlopen_frame_local_area"

    .line 412
    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 413
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 414
    if-eqz p1, :cond_1

    .line 416
    invoke-static {v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-static {v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 418
    invoke-static {v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    add-float/2addr v2, v5

    .line 432
    :goto_0
    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 433
    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 434
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    return-void

    .line 421
    :cond_0
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    invoke-static {v4}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 426
    invoke-static {v6}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    add-float/2addr v2, v5

    goto :goto_0

    .line 429
    :cond_2
    const v2, 0x3faaaaab

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    goto :goto_0
.end method

.method protected intParams()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 135
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "anychatServerAddr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerAddr:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "anychatServerPort"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerPort:I

    .line 137
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "anychatRemoteUserId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    .line 138
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileTel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mobileTel:Ljava/lang/String;

    .line 139
    const-string v0, "====="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mobileTel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/bairuitech/a/a;->a()Lcom/bairuitech/a/a;

    .line 141
    sput-object p0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    .line 143
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mobileTel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychatServerPort:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    if-eq v0, v3, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->Login()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "\u767b\u5f55\u53c2\u6570\u4e3a\u7a7a\uff0c\u8bf7\u68c0\u67e5\uff01"

    invoke-static {v0, p0}, Lcom/bairuitech/b/a;->a(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 616
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnEndSession:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->ShowEndSessionResumeDialg()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mBtnSwitch:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 621
    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 623
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    .line 6184
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, v0, Lcom/bairuitech/anychat/e;->e:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_2

    .line 6205
    :cond_1
    :goto_0
    return-void

    .line 6186
    :cond_2
    iget v3, v0, Lcom/bairuitech/anychat/e;->d:I

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    iput v1, v0, Lcom/bairuitech/anychat/e;->d:I

    .line 6187
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 6188
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 6189
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 6190
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bairuitech/anychat/e;->b:Z

    .line 6191
    const/4 v1, -0x1

    iput v1, v0, Lcom/bairuitech/anychat/e;->f:I

    .line 6192
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 6193
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 6196
    :cond_4
    iget v1, v0, Lcom/bairuitech/anychat/e;->d:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 6197
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    iget-object v2, v0, Lcom/bairuitech/anychat/e;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 6198
    invoke-virtual {v0}, Lcom/bairuitech/anychat/e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6200
    :catch_0
    move-exception v1

    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 6201
    iget-object v1, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 6202
    iput-object v4, v0, Lcom/bairuitech/anychat/e;->a:Landroid/hardware/Camera;

    .line 6203
    iput v6, v0, Lcom/bairuitech/anychat/e;->f:I

    goto :goto_0

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->EnumVideoCapture()[Ljava/lang/String;

    move-result-object v3

    .line 628
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetCurVideoCapture()Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 629
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 630
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 631
    iget-object v4, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v4, v6, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 632
    iget-object v4, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    aget-object v0, v3, v0

    invoke-virtual {v4, v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->SelectVideoCapture(Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v6, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 634
    iput-boolean v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->bSelfVideoOpened:Z

    goto :goto_0

    .line 629
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->adjustLocalVideo(Z)V

    .line 442
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/e;->c()V

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/VideoVitness;->adjustLocalVideo(Z)V

    .line 445
    sget-object v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->k:Lcom/bairuitech/anychat/e;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/e;->c()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->initSdk()V

    .line 110
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->intParams()V

    .line 111
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->initView()V

    .line 112
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->ApplyVideoConfig()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/kwlopen/sdk/activity/VideoVitness$1;

    invoke-direct {v1, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$1;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mHandler:Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->initTimerCheckAv()V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Logout()I

    .line 241
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->Release()I

    .line 243
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerCheckAv:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTimerCheckAv:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTImerShowVidoTime:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mTImerShowVidoTime:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->ShowEndSessionResumeDialg()V

    .line 297
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 204
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 205
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 206
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 207
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 209
    const/16 v0, 0x53

    .line 210
    invoke-static {v0}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->GetSDKOptionInt(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->mSurfaceRemote:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bairuitech/anychat/p;->a(Landroid/view/SurfaceHolder;)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    .line 212
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget-object v0, v0, Lcom/bairuitech/anychat/AnyChatCoreSDK;->m:Lcom/bairuitech/anychat/p;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoIndex:I

    iget v2, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/p;->a(II)V

    .line 215
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 220
    sput-object p0, Lcom/bairuitech/a/a;->c:Landroid/app/Activity;

    .line 221
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/VideoVitness;->initSdk()V

    .line 222
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 228
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 229
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 230
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserSpeakControl(II)I

    .line 231
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->anychat:Lcom/bairuitech/anychat/AnyChatCoreSDK;

    iget v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->dwTargetUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->UserCameraControl(II)I

    .line 233
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 718
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6211\u5f00\u59cb\u5b9a\u65f6\u5668\u4e86-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->timer:Ljava/util/Timer;

    .line 720
    new-instance v0, Lcom/kwlopen/sdk/activity/VideoVitness$5;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/VideoVitness$5;-><init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V

    .line 733
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 734
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 740
    const-class v0, Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u5b9a\u65f6\u5668---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness;->timer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
