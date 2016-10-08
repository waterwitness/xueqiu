.class public final Lcom/xueqiu/android/common/imagepicker/h;
.super Lcom/xueqiu/android/common/c;
.source "PreviewActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 165
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/xueqiu/android/common/imagepicker/h;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Lcom/xueqiu/android/common/imagepicker/h;

    invoke-direct {v0}, Lcom/xueqiu/android/common/imagepicker/h;-><init>()V

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v2, "arg_image"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/imagepicker/h;->e(Landroid/os/Bundle;)V

    .line 172
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 177
    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "arg_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/imagepicker/h;->a:Ljava/lang/String;

    .line 181
    :cond_0
    const v0, 0x7f0300d1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 182
    const v0, 0x7f0e0334

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 183
    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/h;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/imagepicker/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 186
    :cond_1
    return-object v1
.end method
