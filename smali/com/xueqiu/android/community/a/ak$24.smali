.class final Lcom/xueqiu/android/community/a/ak$24;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/xueqiu/android/community/model/RecommendCard;

.field final synthetic d:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$24;->d:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$24;->a:Lcom/xueqiu/android/community/model/User;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$24;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/xueqiu/android/community/a/ak$24;->c:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$24;->d:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$24;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$24;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/User;Landroid/widget/ImageView;)V

    .line 1705
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$24;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$24;->d:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$24;->c:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$24;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xueqiu/android/community/a/ak$24;->c:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RecommendCard;->getLocation()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/community/l;->a(Ljava/lang/String;JI)V

    .line 1708
    :cond_0
    return-void
.end method
