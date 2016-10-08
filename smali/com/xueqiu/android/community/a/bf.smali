.class final Lcom/xueqiu/android/community/a/bf;
.super Ljava/lang/Object;
.source "UsersAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/xueqiu/android/community/a/bd;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/a/bd;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xueqiu/android/community/a/bf;->e:Lcom/xueqiu/android/community/a/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const v0, 0x7f0e00d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bf;->a:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0e01d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bf;->b:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bf;->c:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e020a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/a/bf;->d:Landroid/widget/ImageView;

    .line 112
    return-void
.end method
