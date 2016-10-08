.class final Lcom/xueqiu/android/message/TalkProfileActivity$4;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;->addMember(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$4;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$4;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 469
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 470
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 465
    check-cast p1, Ljava/util/List;

    .line 1474
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$4;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 1475
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$4;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1479
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 1480
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1481
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1480
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1483
    :cond_2
    const-string v0, "exclude_user_ids"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1484
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$4;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/message/TalkProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
