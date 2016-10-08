.class final Lcom/xueqiu/android/cube/m;
.super Lcom/xueqiu/android/common/a/d;
.source "EditorialHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/cube/model/Editorial;",
        ">;"
    }
.end annotation


# static fields
.field private static e:Lcom/d/a/b/f;

.field private static f:Lcom/d/a/b/d;


# instance fields
.field private g:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const v1, 0x7f02018e

    .line 102
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/m;->g:Landroid/view/LayoutInflater;

    .line 104
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/cube/m;->e:Lcom/d/a/b/f;

    .line 105
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 109
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/cube/m;->f:Lcom/d/a/b/d;

    .line 110
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 114
    if-nez p2, :cond_0

    .line 4124
    iget-object v0, p0, Lcom/xueqiu/android/cube/m;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4125
    new-instance v1, Lcom/xueqiu/android/cube/n;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/n;-><init>(Lcom/xueqiu/android/cube/m;)V

    .line 4135
    const v0, 0x7f0e017e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/n;->a:Landroid/widget/ImageView;

    .line 4136
    const v0, 0x7f0e017f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/n;->b:Landroid/widget/TextView;

    .line 4137
    const v0, 0x7f0e0180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/n;->c:Landroid/widget/TextView;

    .line 4125
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Editorial;

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/n;

    .line 5142
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 6093
    sget-object v3, Lcom/xueqiu/android/cube/m;->e:Lcom/d/a/b/f;

    .line 5143
    iget-object v4, v1, Lcom/xueqiu/android/cube/n;->a:Landroid/widget/ImageView;

    .line 7093
    sget-object v5, Lcom/xueqiu/android/cube/m;->f:Lcom/d/a/b/d;

    .line 5143
    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 5144
    iget-object v2, v1, Lcom/xueqiu/android/cube/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5145
    iget-object v1, v1, Lcom/xueqiu/android/cube/n;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    const-string v2, "yyyy.MM.dd"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object p2
.end method
