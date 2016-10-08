.class final Lcom/xueqiu/android/community/WriteStatusActivity$6;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 675
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 717
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 718
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->w(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    rsub-int v2, v2, 0x8c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    if-eq v0, v7, :cond_2

    iget v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    if-eq v0, v7, :cond_2

    .line 721
    iget v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    .line 722
    iget v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    .line 723
    iput v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    .line 724
    iput v7, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    .line 726
    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    move v0, v1

    .line 727
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 728
    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa5

    if-ne v5, v6, :cond_3

    .line 729
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 730
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    .line 1079
    iput v7, v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->a:I

    .line 1080
    iput v7, v0, Lcom/xueqiu/android/common/widget/SnowBallEditText;->b:I

    .line 731
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->c(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/common/widget/SnowBallEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SnowBallEditText;->setUserName(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->d(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;Z)V

    .line 737
    :cond_1
    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 739
    :cond_2
    return-void

    .line 727
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    const/16 v2, 0x24

    const/16 v4, 0x1e

    const/16 v3, 0x20

    .line 686
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    .line 688
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 689
    if-ne v0, v3, :cond_3

    .line 690
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sub-int v1, p2, v0

    if-gt v1, v4, :cond_0

    .line 691
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 713
    :cond_0
    :goto_1
    return-void

    .line 694
    :cond_1
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    .line 695
    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    .line 696
    iput p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    goto :goto_1

    .line 690
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    :cond_3
    if-ne v0, v2, :cond_0

    .line 701
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lez v0, :cond_0

    sub-int v1, p2, v0

    if-gt v1, v4, :cond_0

    .line 702
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 705
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 706
    iput v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->b:I

    .line 707
    iput p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$6;->c:I

    goto :goto_1

    .line 701
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method
