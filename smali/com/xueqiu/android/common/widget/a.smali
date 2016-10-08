.class public final Lcom/xueqiu/android/common/widget/a;
.super Landroid/app/Dialog;
.source "AddLinkDialog.java"


# instance fields
.field public a:Lcom/xueqiu/android/common/widget/b;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->setContentView(I)V

    .line 40
    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/a;->d:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e01c3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/a;->e:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0e01bf

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/a;->b:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0e01c0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/a;->c:Landroid/widget/EditText;

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/widget/a$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/a$1;-><init>(Lcom/xueqiu/android/common/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/widget/a$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/a$2;-><init>(Lcom/xueqiu/android/common/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/a;->setCanceledOnTouchOutside(Z)V

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/widget/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/widget/a;)Lcom/xueqiu/android/common/widget/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a;->a:Lcom/xueqiu/android/common/widget/b;

    return-object v0
.end method
