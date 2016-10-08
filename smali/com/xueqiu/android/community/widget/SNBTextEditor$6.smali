.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$6;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/xueqiu/android/community/widget/SNBRichImageView;

.field final synthetic d:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;Landroid/widget/TextView;Lcom/xueqiu/android/community/widget/SNBRichImageView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->d:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    iput-object p3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->c:Lcom/xueqiu/android/community/widget/SNBRichImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 464
    .line 1467
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->c:Lcom/xueqiu/android/community/widget/SNBRichImageView;

    sget v1, Lcom/xueqiu/android/community/widget/SNBRichImageView;->c:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->setUploadState(I)V

    .line 1470
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1471
    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff01"

    const-string v2, ""

    const-string v3, "#CC0000"

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1472
    const-string v1, "\u91cd\u65b0\u4e0a\u4f20"

    const-string v2, ""

    const-string v3, "#0066CC"

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/au;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1473
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1474
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$6;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 464
    return-void
.end method
