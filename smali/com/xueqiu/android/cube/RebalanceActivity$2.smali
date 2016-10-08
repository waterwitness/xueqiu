.class final Lcom/xueqiu/android/cube/RebalanceActivity$2;
.super Ljava/lang/Object;
.source "RebalanceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/RebalanceActivity;->onBackPressed()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/RebalanceActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/RebalanceActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/cube/RebalanceActivity$2;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$2;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->b(Lcom/xueqiu/android/cube/RebalanceActivity;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$2;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->b(Lcom/xueqiu/android/cube/RebalanceActivity;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v0

    .line 1968
    iget-boolean v0, v0, Lcom/xueqiu/android/cube/b/h;->d:Z

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$2;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/RebalanceActivity;->setResult(I)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$2;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->finish()V

    .line 120
    return-void
.end method
