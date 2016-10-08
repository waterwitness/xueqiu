.class public Lcom/xueqiu/android/community/c/q;
.super Landroid/support/v4/a/h;
.source "ShareStatusFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final ak:Ljava/lang/String;


# instance fields
.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Landroid/widget/EditText;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/xueqiu/android/community/c/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/c/q;->ak:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/a/h;-><init>()V

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xueqiu/android/community/c/q;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/xueqiu/android/community/c/q;

    invoke-direct {v0}, Lcom/xueqiu/android/community/c/q;-><init>()V

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "arg_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v2, "arg_text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "arg_symbol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "arg_type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/q;->e(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/c/q;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/q;->u()V

    return-void
.end method

.method private u()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 113
    .line 114
    const-string v0, "stock"

    iget-object v1, p0, Lcom/xueqiu/android/community/c/q;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v2, "37erm7ZyxA"

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v3, p0, Lcom/xueqiu/android/community/c/q;->an:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/c/q;->ap:Ljava/lang/String;

    iget-object v5, p0, Lcom/xueqiu/android/community/c/q;->ao:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/c/q$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/c/q$3;-><init>(Lcom/xueqiu/android/community/c/q;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 133
    return-void

    :cond_0
    move-object v2, v6

    goto :goto_0
.end method


# virtual methods
.method public final b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 74
    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 74
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 75
    const-string v1, "arg_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/q;->al:Ljava/lang/String;

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 76
    const-string v1, "arg_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/q;->am:Ljava/lang/String;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 77
    const-string v1, "arg_symbol"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/q;->ao:Ljava/lang/String;

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 78
    const-string v1, "arg_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/c/q;->ap:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    const v0, 0x7f0e04cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/c/q;->an:Landroid/widget/EditText;

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/community/c/q;->an:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/q;->am:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/c/q;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xueqiu/android/community/c/q;->al:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/community/c/q$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/c/q$2;-><init>(Lcom/xueqiu/android/community/c/q;)V

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/c/q$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/c/q$1;-><init>(Lcom/xueqiu/android/community/c/q;)V

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/xueqiu/android/community/c/q;->u()V

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
