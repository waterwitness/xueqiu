.class public Lcom/xueqiu/android/message/ApplyListActivity;
.super Lcom/xueqiu/android/common/b;
.source "ApplyListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/b;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/message/model/Apply;",
        ">;"
    }
.end annotation


# instance fields
.field private j:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    return-void
.end method

.method private static a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5283
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, p0, p1}, Lcom/xueqiu/android/base/b/d;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ApplyListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/ApplyListActivity;Lcom/xueqiu/android/message/model/Apply;)V
    .locals 4

    .prologue
    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 6141
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Apply;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/ApplyListActivity$3;

    invoke-direct {v1, p0, p0, p1}, Lcom/xueqiu/android/message/ApplyListActivity$3;-><init>(Lcom/xueqiu/android/message/ApplyListActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/message/model/Apply;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->o(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    .line 115
    iget v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/ApplyListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->c()V

    .line 134
    :cond_1
    return-void
.end method

.method public final b(Lcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/message/model/Apply;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 120
    iget v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    .line 121
    iget v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->k:I

    invoke-static {v0, p1}, Lcom/xueqiu/android/message/ApplyListActivity;->a(ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030195

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ApplyListActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/message/ApplyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 46
    new-instance v1, Lcom/xueqiu/android/common/r;

    invoke-direct {v1, v0, p0}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 47
    new-instance v0, Lcom/xueqiu/android/message/a/k;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/a/k;-><init>(Landroid/content/Context;)V

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 4144
    iput-object v1, v0, Lcom/xueqiu/android/message/a/k;->e:Lcom/xueqiu/android/base/b/ai;

    .line 49
    iget-object v1, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 50
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    .line 4225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/message/ApplyListActivity;->j:Lcom/xueqiu/android/common/r;

    new-instance v1, Lcom/xueqiu/android/message/ApplyListActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/ApplyListActivity$1;-><init>(Lcom/xueqiu/android/message/ApplyListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x1

    const v1, 0x7f070082

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020266

    .line 79
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 78
    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 80
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 87
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/ApplyListActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/ApplyListActivity$2;-><init>(Lcom/xueqiu/android/message/ApplyListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070409

    .line 107
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b4

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/message/ApplyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
