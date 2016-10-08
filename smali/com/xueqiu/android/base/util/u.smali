.class public final Lcom/xueqiu/android/base/util/u;
.super Ljava/lang/Object;
.source "LengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xueqiu/android/base/util/u;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {p4}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v0

    iget v2, p0, Lcom/xueqiu/android/base/util/u;->a:I

    if-lt v0, v2, :cond_0

    .line 27
    const-string v0, ""

    .line 35
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/base/util/u;->a:I

    invoke-static {p4}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int v2, v0, v2

    move v0, v1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 31
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v3

    if-le v3, v2, :cond_1

    .line 32
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
