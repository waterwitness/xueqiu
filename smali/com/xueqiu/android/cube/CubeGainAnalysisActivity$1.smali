.class final Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;
.super Ljava/lang/Object;
.source "CubeGainAnalysisActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;I)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 112
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/RotateImageView;->getLocationInWindow([I)V

    .line 113
    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->a:I

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->c(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$1;->b:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Z

    .line 118
    :cond_0
    return-void

    .line 111
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
