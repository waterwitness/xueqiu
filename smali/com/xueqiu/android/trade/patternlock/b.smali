.class public final Lcom/xueqiu/android/trade/patternlock/b;
.super Lcom/xueqiu/android/trade/patternlock/a;
.source "ConfirmPatternFragment.java"

# interfaces
.implements Lcom/xueqiu/android/trade/patternlock/i;


# instance fields
.field protected c:I

.field public d:Lcom/xueqiu/android/trade/patternlock/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/trade/patternlock/a;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/patternlock/b;)V
    .locals 3

    .prologue
    .line 4150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702d9

    .line 4151
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/trade/patternlock/b$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/patternlock/b$2;-><init>(Lcom/xueqiu/android/trade/patternlock/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 4166
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07025b

    .line 4167
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 25
    return-void
.end method

.method public static v()Lcom/xueqiu/android/trade/patternlock/b;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/b;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/patternlock/b;-><init>()V

    .line 40
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/xueqiu/android/trade/patternlock/a;->a(Landroid/os/Bundle;)V

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "num_failed_attempts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/trade/patternlock/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 64
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 65
    const-string v1, "arg_desc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/xueqiu/android/trade/patternlock/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setInStealthMode(Z)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setOnPatternListener(Lcom/xueqiu/android/trade/patternlock/i;)V

    .line 73
    const v0, 0x7f0e00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/trade/patternlock/b$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/patternlock/b$1;-><init>(Lcom/xueqiu/android/trade/patternlock/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->a:Landroid/widget/TextView;

    const v1, 0x7f070284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/trade/patternlock/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    .line 3136
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->g()Landroid/support/v4/a/k;

    move-result-object v2

    .line 4044
    invoke-static {p1}, Lcom/xueqiu/android/trade/patternlock/e;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/xueqiu/android/trade/patternlock/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 4121
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    if-eqz v0, :cond_0

    .line 4122
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/patternlock/c;->a()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    sget-object v3, Lcom/xueqiu/android/trade/patternlock/h;->c:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->u()V

    .line 4127
    iget v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    .line 4128
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->a:Landroid/widget/TextView;

    const v3, 0x7f07027f

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    rsub-int/lit8 v5, v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xueqiu/android/trade/patternlock/b;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4129
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4130
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    if-eqz v2, :cond_0

    .line 4131
    iget-object v2, p0, Lcom/xueqiu/android/trade/patternlock/b;->d:Lcom/xueqiu/android/trade/patternlock/c;

    iget v3, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    :goto_1
    invoke-interface {v2, v0}, Lcom/xueqiu/android/trade/patternlock/c;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/xueqiu/android/trade/patternlock/a;->d(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "num_failed_attempts"

    iget v1, p0, Lcom/xueqiu/android/trade/patternlock/b;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->b()V

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/b;->b:Lcom/xueqiu/android/trade/patternlock/PatternView;

    sget-object v1, Lcom/xueqiu/android/trade/patternlock/h;->a:Lcom/xueqiu/android/trade/patternlock/h;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/patternlock/PatternView;->setDisplayMode(Lcom/xueqiu/android/trade/patternlock/h;)V

    .line 94
    return-void
.end method

.method public final x()V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/patternlock/b;->b()V

    .line 114
    return-void
.end method
