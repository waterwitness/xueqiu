.class Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;


# direct methods
.method private constructor <init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Lcom/kwlopen/sdk/activity/VideoPlayActivity$1;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;-><init>(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    # getter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$000(Lcom/kwlopen/sdk/activity/VideoPlayActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 146
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoPlayActivity$SurfaceCallback;->this$0:Lcom/kwlopen/sdk/activity/VideoPlayActivity;

    const/4 v1, 0x0

    # setter for: Lcom/kwlopen/sdk/activity/VideoPlayActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/kwlopen/sdk/activity/VideoPlayActivity;->access$002(Lcom/kwlopen/sdk/activity/VideoPlayActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 148
    :cond_0
    return-void
.end method
