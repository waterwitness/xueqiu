.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;
.super Ljava/lang/Object;
.source "CubeRbHistoryActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 153
    return-void
.end method
