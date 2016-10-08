.class final Lcom/xueqiu/android/community/StatusDetailActivity$5$1;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity$5;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$5$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$5$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$5;

    iget-object v0, v0, Lcom/xueqiu/android/community/StatusDetailActivity$5;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 724
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$5$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$5;

    iget-object v1, v1, Lcom/xueqiu/android/community/StatusDetailActivity$5;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$5$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$5;

    iget-object v1, v1, Lcom/xueqiu/android/community/StatusDetailActivity$5;->b:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->h(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 725
    return-void
.end method
