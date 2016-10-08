.class final Lcom/xueqiu/android/base/util/ai$1;
.super Ljava/lang/Object;
.source "SNBHtmlUtil.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;ZIZ)Landroid/text/Spanned;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ai$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v0, 0x0

    .line 76
    const-string v1, "[\u5475\u5475\u50bb\u903c]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/xueqiu/android/base/util/ai$1;->a:Landroid/content/Context;

    const v3, 0x7f070155

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 80
    const/16 v3, 0x36

    if-ge v2, v3, :cond_0

    if-gez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$1;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 84
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    :cond_2
    :goto_0
    return-object v0

    .line 86
    :cond_3
    const-string v1, "[\u7f51\u9875\u94fe\u63a5]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 88
    const v0, 0x7f0202f4

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    :goto_1
    if-eqz v0, :cond_2

    .line 93
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 94
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 90
    :cond_4
    const v0, 0x7f0202f5

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
