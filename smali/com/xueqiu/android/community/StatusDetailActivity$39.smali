.class final Lcom/xueqiu/android/community/StatusDetailActivity$39;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$39;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$39;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$39;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$39;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/User;)V

    .line 486
    return-void
.end method
