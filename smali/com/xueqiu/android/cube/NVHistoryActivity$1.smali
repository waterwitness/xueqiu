.class final Lcom/xueqiu/android/cube/NVHistoryActivity$1;
.super Ljava/lang/Object;
.source "NVHistoryActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/NVHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/NVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/NVHistoryActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;I)I

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->h(Lcom/xueqiu/android/cube/NVHistoryActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->b(Lcom/xueqiu/android/cube/NVHistoryActivity;I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity$1;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 107
    return-void
.end method
