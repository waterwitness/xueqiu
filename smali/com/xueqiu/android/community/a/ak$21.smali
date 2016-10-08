.class final Lcom/xueqiu/android/community/a/ak$21;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/model/RecommendCard;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0

    .prologue
    .line 1633
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$21;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$21;->a:Lcom/xueqiu/android/community/model/Status;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$21;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$21;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$21;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1638
    const-string v1, "status"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$21;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1640
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$21;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1642
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$21;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$21;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$21;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$21;->a:Lcom/xueqiu/android/community/model/Status;

    .line 1644
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$21;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendCard;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/a/ak$21;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    .line 1645
    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RecommendCard;->getLocation()I

    move-result v4

    .line 1643
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/community/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1648
    :cond_0
    return-void
.end method
