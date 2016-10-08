.class final Lcom/xueqiu/android/community/StatusDetailActivity$13;
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
    .line 1001
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$13;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$13;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$13;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPromotionUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$13;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1005
    return-void
.end method
