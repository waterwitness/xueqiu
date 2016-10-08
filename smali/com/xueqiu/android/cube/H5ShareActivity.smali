.class public Lcom/xueqiu/android/cube/H5ShareActivity;
.super Lcom/xueqiu/android/base/h5/H5Activity;
.source "H5ShareActivity.java"


# instance fields
.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xueqiu/android/base/h5/H5Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/h5/H5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/H5ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_share_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->p:Ljava/lang/String;

    .line 29
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/H5ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_share_wx_content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->q:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/H5ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_share_image"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->r:I

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const v0, 0x7f0e0015

    const v1, 0x7f070376

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02033f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 37
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 43
    const v1, 0x7f0e0015

    if-ne v0, v1, :cond_2

    .line 2051
    iget-object v0, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 47
    :goto_1
    return v0

    .line 2055
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0}, Lcom/xueqiu/android/common/widget/an;-><init>()V

    .line 2056
    iget-object v1, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->p:Ljava/lang/String;

    .line 2113
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 3075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 2057
    const-string v2, "wx_content_type"

    iget-object v3, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 2058
    const-string v2, "wx_friend_content"

    iget-object v3, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5065
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 2059
    const-string v2, "wx_title"

    iget-object v3, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    iget-object v1, p0, Lcom/xueqiu/android/cube/H5ShareActivity;->j:Ljava/lang/String;

    .line 5129
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 2061
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/H5ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6101
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 2062
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;

    goto :goto_0

    .line 47
    :cond_2
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/h5/H5Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method
