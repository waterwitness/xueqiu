.class public final Lcom/xueqiu/android/community/d/e;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/t;
.implements Lcom/xueqiu/android/community/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/t",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;",
        "Lcom/xueqiu/android/community/b/n;"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# instance fields
.field d:Lcom/xueqiu/android/community/model/User;

.field e:Lcom/xueqiu/android/common/b;

.field f:Lcom/xueqiu/android/base/b/ai;

.field public g:I

.field private h:Lcom/xueqiu/android/community/b/o;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/xueqiu/android/community/d/e;->a:I

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/xueqiu/android/community/d/e;->b:I

    .line 47
    const/4 v0, 0x4

    sput v0, Lcom/xueqiu/android/community/d/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/community/b/o;Lcom/xueqiu/android/community/model/User;)V
    .locals 1
    .param p1    # Lcom/xueqiu/android/community/b/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget v0, Lcom/xueqiu/android/community/d/e;->a:I

    iput v0, p0, Lcom/xueqiu/android/community/d/e;->g:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/d/e;->i:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/d/e;->j:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/d/e;->k:Ljava/util/ArrayList;

    .line 63
    iput-object p2, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e;->h:Lcom/xueqiu/android/community/b/o;

    .line 65
    check-cast p1, Lcom/xueqiu/android/common/b;

    iput-object p1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    .line 66
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    .line 67
    return-void
.end method

.method private a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/xueqiu/android/base/b/p",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/xueqiu/android/base/b/x",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d/e;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    if-nez p1, :cond_0

    .line 263
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    move-wide v8, v2

    .line 269
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    const/4 v10, 0x3

    .line 278
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/xueqiu/android/community/d/e;->g:I

    .line 2304
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    move-object v12, p2

    .line 3195
    invoke-virtual/range {v1 .. v12}, Lcom/xueqiu/android/base/b/aj;->a(JLjava/lang/String;IJJIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 281
    :goto_2
    return-object v0

    .line 265
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v8

    move-wide v6, v2

    goto :goto_0

    .line 275
    :cond_1
    const/16 v10, 0x14

    goto :goto_1

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget v5, p0, Lcom/xueqiu/android/community/d/e;->g:I

    .line 3321
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    .line 4200
    const/4 v4, 0x0

    move-object v12, p2

    invoke-virtual/range {v1 .. v12}, Lcom/xueqiu/android/base/b/aj;->a(JLjava/lang/String;IJJIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-wide v6, v2

    move-wide v8, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->h:Lcom/xueqiu/android/community/b/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    return-object p1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/d/e;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->i:Ljava/util/ArrayList;

    return-object v0
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
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/d/e;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v7, Lcom/xueqiu/android/base/b/t;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v7, v0}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 193
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    iget v4, p0, Lcom/xueqiu/android/community/d/e;->g:I

    const/4 v6, 0x1

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(JIIILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 194
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v7, v0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 220
    .line 2071
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d/e;->c()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d/e$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d/e$1;-><init>(Lcom/xueqiu/android/community/d/e;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 221
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/Throwable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/xueqiu/android/community/d/e;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_0
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
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;)",
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/xueqiu/android/community/d/e;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public final c()Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 97
    new-instance v0, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/r;-><init>()V

    .line 1017
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/base/b/r;->a:Z

    .line 99
    sget-object v1, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    .line 1033
    iput-object v1, v0, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 101
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 102
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 104
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    .line 1934
    invoke-virtual {v2, v1, v6, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 1938
    invoke-virtual {v1, v6, v2, v0}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->f:Lcom/xueqiu/android/base/b/ai;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->g(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lcom/xueqiu/android/community/d/e;->g:I

    sget v1, Lcom/xueqiu/android/community/d/e;->a:I

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->i:Ljava/util/ArrayList;

    .line 237
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/d/e;->g:I

    sget v1, Lcom/xueqiu/android/community/d/e;->b:I

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->j:Ljava/util/ArrayList;

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e;->k:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 285
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 286
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/community/d/e$7;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/community/d/e$7;-><init>(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/base/b/t;)V

    .line 288
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 294
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d/e$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d/e$8;-><init>(Lcom/xueqiu/android/community/d/e;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 337
    return-void

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 297
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 340
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/t;-><init>(Lcom/xueqiu/android/base/b/q;)V

    .line 341
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->d:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 4970
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/an;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 343
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/d/e$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/d/e$10;-><init>(Lcom/xueqiu/android/community/d/e;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 377
    return-void

    .line 345
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/d/e;->e:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/community/d/e$9;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/community/d/e$9;-><init>(Lcom/xueqiu/android/community/d/e;Lcom/xueqiu/android/base/b/t;)V

    .line 346
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 352
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
