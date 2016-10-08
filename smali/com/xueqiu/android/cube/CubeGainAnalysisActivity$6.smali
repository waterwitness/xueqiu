.class final Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$6;
.super Ljava/lang/Object;
.source "CubeGainAnalysisActivity.java"

# interfaces
.implements Lcom/xueqiu/chart/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$6;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 417
    const-string v0, "%s%%"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\.?0*$"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
