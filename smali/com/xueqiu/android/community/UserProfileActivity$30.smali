.class final Lcom/xueqiu/android/community/UserProfileActivity$30;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UserProfileActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/xueqiu/android/community/UserProfileActivity$30;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const v4, 0x7f0e078d

    const v6, 0x7f0e078c

    const/4 v5, 0x0

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/community/UserProfileActivity$30;->a:Lcom/xueqiu/android/community/UserProfileActivity;

    .line 1356
    new-instance v1, Landroid/widget/PopupMenu;

    const v2, 0x7f0e0010

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/community/UserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1357
    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1359
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1360
    iget-object v3, v0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->isBlocking()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1361
    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1362
    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1363
    const v3, 0x7f0e078e

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f070072

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1373
    :cond_0
    :goto_0
    new-instance v2, Lcom/xueqiu/android/community/UserProfileActivity$2;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/community/UserProfileActivity$2;-><init>(Lcom/xueqiu/android/community/UserProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1399
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 324
    return-void

    .line 1365
    :cond_1
    iget-object v3, v0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1366
    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0702ee

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/UserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1368
    :cond_2
    iget-object v3, v0, Lcom/xueqiu/android/community/UserProfileActivity;->p:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1369
    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
