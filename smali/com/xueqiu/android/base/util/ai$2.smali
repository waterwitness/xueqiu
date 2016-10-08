.class final Lcom/xueqiu/android/base/util/ai$2;
.super Ljava/lang/Object;
.source "SNBHtmlUtil.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Landroid/widget/TextView;)Landroid/text/Spanned;
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ai$2;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ai$2;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xueqiu/android/base/util/ai$2;->a:I

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 137
    const-string v0, "[\u5475\u5475\u50bb\u903c]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$2;->b:Landroid/content/Context;

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 141
    const/16 v2, 0x36

    if-ge v1, v2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ai$2;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ai$2;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 145
    invoke-virtual {v0, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    :cond_2
    :goto_0
    return-object v0

    .line 150
    :cond_3
    new-instance v0, Lcom/xueqiu/android/base/util/aj;

    invoke-direct {v0}, Lcom/xueqiu/android/base/util/aj;-><init>()V

    .line 152
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    sget v2, Lcom/d/a/b/a/e;->a:I

    .line 1376
    iput v2, v1, Lcom/d/a/b/e;->j:I

    .line 153
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 154
    const-string v2, ".jpg!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".jpeg!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".png!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 156
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%s!custom660.jpg"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_5
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/base/util/ai$2$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/base/util/ai$2$1;-><init>(Lcom/xueqiu/android/base/util/ai$2;Lcom/xueqiu/android/base/util/aj;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto :goto_0
.end method
