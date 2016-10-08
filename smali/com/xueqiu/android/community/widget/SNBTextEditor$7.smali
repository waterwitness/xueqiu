.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$7;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/a;

.field final synthetic b:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/common/widget/a;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 619
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "<a href=\"%s\" target=\"_blank\">%s</a>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getSelectionEnd()I

    move-result v1

    .line 621
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 622
    iget-object v3, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1054
    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    .line 623
    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 624
    iget-object v2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    move-result-object v2

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->setSelection(I)V

    .line 625
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$7;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/a;->dismiss()V

    .line 626
    return-void
.end method
