.class public Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;
.super Lcom/xueqiu/android/common/c;
.source "PreviewActivity.java"


# instance fields
.field protected a:Lcom/xueqiu/android/common/imagepicker/g;

.field protected b:Landroid/support/v4/view/ViewPager;

.field protected c:Landroid/support/v4/a/v;

.field protected d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public final C()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 111
    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-string v1, "arg_images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    .line 115
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;

    .line 1691
    iget-object v1, p0, Landroid/support/v4/a/i;->C:Landroid/support/v4/a/r;

    .line 115
    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;-><init>(Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;Landroid/support/v4/a/q;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->c:Landroid/support/v4/a/v;

    .line 127
    const v0, 0x7f030131

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 128
    const v0, 0x7f0e0176

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->b:Landroid/support/v4/view/ViewPager;

    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->c:Landroid/support/v4/a/v;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bd;)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->b:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;-><init>(Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/cp;)V

    .line 138
    return-object v1
.end method

.method public final a(Lcom/xueqiu/android/common/imagepicker/g;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a:Lcom/xueqiu/android/common/imagepicker/g;

    .line 151
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->c:Landroid/support/v4/a/v;

    invoke-virtual {v0}, Landroid/support/v4/a/v;->d()V

    .line 106
    return-void
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method
