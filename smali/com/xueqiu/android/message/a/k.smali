.class public final Lcom/xueqiu/android/message/a/k;
.super Lcom/xueqiu/android/common/a/d;
.source "GroupApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/message/model/Apply;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/xueqiu/android/base/b/ai;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/d/a/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/k;->g:Lcom/d/a/b/f;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/k;->f:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/k;)Lcom/xueqiu/android/base/b/ai;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k;->e:Lcom/xueqiu/android/base/b/ai;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f030169

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1129
    new-instance v1, Lcom/xueqiu/android/message/a/l;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/l;-><init>()V

    .line 1130
    const v0, 0x7f0e0560

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 1131
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/l;->b:Landroid/widget/TextView;

    .line 1132
    const v0, 0x7f0e0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/IMTextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/l;->c:Lcom/xueqiu/android/common/widget/IMTextView;

    .line 1133
    const v0, 0x7f0e0561

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 53
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/l;

    .line 57
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Apply;

    .line 2121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->b:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getLargeProfileImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/message/a/k;->g:Lcom/d/a/b/f;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getLargeProfileImage()Ljava/lang/String;

    move-result-object v3

    .line 5121
    iget-object v4, v0, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v2, v3, v4}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getLargeProfileImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7121
    :cond_2
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->a:Landroid/widget/ImageView;

    .line 64
    new-instance v3, Lcom/xueqiu/android/message/a/k$1;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/message/a/k$1;-><init>(Lcom/xueqiu/android/message/a/k;Lcom/xueqiu/android/message/model/Apply;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    const-string v2, "\u6211\u5e0c\u671b\u52a0\u5165\u7fa4\u7ec4\u201c%s\u201d\uff0c\u7559\u8a00\uff1a\u201c%s\u201d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getGroupName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8121
    :goto_0
    iget-object v3, v0, Lcom/xueqiu/android/message/a/l;->c:Lcom/xueqiu/android/common/widget/IMTextView;

    .line 79
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/IMTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->isJoined()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 82
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 83
    const-string v3, "\u5df2\u901a\u8fc7"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13121
    :goto_1
    iget-object v0, v0, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 88
    new-instance v2, Lcom/xueqiu/android/message/a/k$2;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/message/a/k$2;-><init>(Lcom/xueqiu/android/message/a/k;Lcom/xueqiu/android/message/model/Apply;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-object p2

    .line 77
    :cond_3
    const-string v2, "\u6211\u5e0c\u671b\u52a0\u5165\u7fa4\u7ec4\u201c%s\u201d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getGroupName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 11121
    :cond_4
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 85
    const-string v3, "\u901a\u8fc7"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12121
    iget-object v2, v0, Lcom/xueqiu/android/message/a/l;->d:Landroid/widget/Button;

    .line 86
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
