.class Lcom/kwlopen/sdk/activity/VideoVitness$4;
.super Ljava/lang/Object;
.source "VideoVitness.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->initView()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

.field final synthetic val$layoutLocal:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iput-object p2, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->val$layoutLocal:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iget-boolean v0, v0, Lcom/kwlopen/sdk/activity/VideoVitness;->bVideoViewLoaded:Z

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwlopen/sdk/activity/VideoVitness;->bVideoViewLoaded:Z

    .line 342
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$4;->val$layoutLocal:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/kwlopen/sdk/activity/VideoVitness;->videoAreaWidth:I

    .line 344
    :cond_0
    return-void
.end method
