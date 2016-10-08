.class public Lcom/xueqiu/android/common/imagepicker/PreviewActivity;
.super Lcom/xueqiu/android/common/b;
.source "PreviewActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 158
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/imagepicker/PreviewActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    .line 76
    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 76
    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->u()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->C()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const v1, 0x7f0e0139

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    .line 42
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_images"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a(Ljava/util/ArrayList;)V

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    new-instance v1, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$1;-><init>(Lcom/xueqiu/android/common/imagepicker/PreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a(Lcom/xueqiu/android/common/imagepicker/g;)V

    .line 50
    invoke-direct {p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j()V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x1

    const v1, 0x7f07035f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020273

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 58
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->finish()V

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;->j:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->u()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
