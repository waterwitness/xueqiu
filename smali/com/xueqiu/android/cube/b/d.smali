.class public final Lcom/xueqiu/android/cube/b/d;
.super Lcom/xueqiu/android/common/c;
.source "NameCubeFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xueqiu/android/cube/b/e;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/b/d;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/xueqiu/android/cube/b/d;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/xueqiu/android/cube/b/d;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/b/d;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/b/d;->e(Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/b/d;)Lcom/xueqiu/android/cube/b/e;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d;->b:Lcom/xueqiu/android/cube/b/e;

    return-object v0
.end method


# virtual methods
.method public final F_()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->F_()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/d;->b:Lcom/xueqiu/android/cube/b/e;

    .line 166
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/b/d;->e_(Z)V

    .line 80
    const v0, 0x7f030132

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/app/Activity;)V

    .line 155
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/cube/b/e;

    move-object v1, v0

    iput-object v1, p0, Lcom/xueqiu/android/cube/b/d;->b:Lcom/xueqiu/android/cube/b/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 157
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFragmentInteractionListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 70
    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 71
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/d;->a:Ljava/lang/String;

    .line 73
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    const v0, 0x7f0e04cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/d;->c:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0e00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/d;->d:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f0e0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/b/d;->e:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d;->e:Landroid/widget/TextView;

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d;->d:Landroid/widget/TextView;

    const v1, 0x7f07023b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f0e0787

    if-ne v0, v3, :cond_7

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/d;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4098
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 4099
    :cond_0
    const v0, 0x7f070419

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 119
    :goto_0
    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/d;->y()Landroid/app/Dialog;

    .line 121
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/b/d;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/d;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/cube/b/d$1;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/cube/b/d$1;-><init>(Lcom/xueqiu/android/cube/b/d;Lcom/xueqiu/android/base/b/q;)V

    .line 4539
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/b/c;->f(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 5053
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 144
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x581

    invoke-direct {v2, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 148
    :goto_1
    return v0

    .line 4103
    :cond_2
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_3

    .line 4104
    const v0, 0x7f07041b

    .line 4112
    :goto_2
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 4105
    :cond_3
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aw;->a(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 4106
    const v0, 0x7f07041c

    goto :goto_2

    .line 4201
    :cond_4
    if-eqz v0, :cond_5

    const-string v3, "[a-zA-Z0-9\u4e00-\u9fa5_-]*"

    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 4107
    :goto_3
    if-nez v0, :cond_6

    .line 4108
    const v0, 0x7f07041a

    goto :goto_2

    :cond_5
    move v0, v2

    .line 4201
    goto :goto_3

    :cond_6
    move v2, v1

    .line 4110
    goto :goto_0

    :cond_7
    move v0, v2

    .line 148
    goto :goto_1
.end method
