.class final Lcom/xueqiu/android/common/widget/IMTextView$2;
.super Ljava/lang/Object;
.source "IMTextView.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/IMTextView;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spanned;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xueqiu/android/common/widget/IMTextView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/IMTextView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/IMTextView$2;->b:Lcom/xueqiu/android/common/widget/IMTextView;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/IMTextView$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/IMTextView$2;->a:Landroid/content/Context;

    const v2, 0x7f070155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 165
    const/16 v2, 0x36

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/IMTextView$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/IMTextView$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 169
    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
