.class public final Lcom/c/a/r;
.super Lcom/c/a/x;
.source "ObjectAnimator.java"


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/b/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private k:Lcom/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    sput-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "alpha"

    sget-object v2, Lcom/c/a/s;->a:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "pivotX"

    sget-object v2, Lcom/c/a/s;->b:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "pivotY"

    sget-object v2, Lcom/c/a/s;->c:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "translationX"

    sget-object v2, Lcom/c/a/s;->d:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "translationY"

    sget-object v2, Lcom/c/a/s;->e:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "rotation"

    sget-object v2, Lcom/c/a/s;->f:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "rotationX"

    sget-object v2, Lcom/c/a/s;->g:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "rotationY"

    sget-object v2, Lcom/c/a/s;->h:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "scaleX"

    sget-object v2, Lcom/c/a/s;->i:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "scaleY"

    sget-object v2, Lcom/c/a/s;->j:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "scrollX"

    sget-object v2, Lcom/c/a/s;->k:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "scrollY"

    sget-object v2, Lcom/c/a/s;->l:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "x"

    sget-object v2, Lcom/c/a/s;->m:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    const-string v1, "y"

    sget-object v2, Lcom/c/a/s;->n:Lcom/c/b/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/c/a/x;-><init>()V

    .line 151
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Lcom/c/a/x;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/c/a/r;->i:Ljava/lang/Object;

    .line 1096
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    aget-object v0, v0, v3

    .line 1713
    iget-object v1, v0, Lcom/c/a/t;->a:Ljava/lang/String;

    .line 2689
    iput-object p2, v0, Lcom/c/a/t;->a:Ljava/lang/String;

    .line 1100
    iget-object v2, p0, Lcom/c/a/r;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, Lcom/c/a/r;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_0
    iput-object p2, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    .line 1105
    iput-boolean v3, p0, Lcom/c/a/r;->e:Z

    .line 165
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/c/a/r;

    invoke-direct {v0, p0, p1}, Lcom/c/a/r;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/c/a/r;->a([F)V

    .line 233
    return-object v0
.end method


# virtual methods
.method public final synthetic a(J)Lcom/c/a/a;
    .locals 1

    .prologue
    .line 39
    .line 6427
    invoke-super {p0, p1, p2}, Lcom/c/a/x;->b(J)Lcom/c/a/x;

    .line 39
    return-object p0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 385
    invoke-super {p0}, Lcom/c/a/x;->a()V

    .line 386
    return-void
.end method

.method final a(F)V
    .locals 4

    .prologue
    .line 491
    invoke-super {p0, p1}, Lcom/c/a/x;->a(F)V

    .line 492
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    array-length v1, v0

    .line 493
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 494
    iget-object v2, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/c/a/r;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/c/a/t;->b(Ljava/lang/Object;)V

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method public final varargs a([F)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    if-eqz v0, :cond_1

    .line 349
    new-array v0, v1, [Lcom/c/a/t;

    iget-object v1, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Lcom/c/b/c;[F)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/r;->a([Lcom/c/a/t;)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_1
    new-array v0, v1, [Lcom/c/a/t;

    iget-object v1, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Ljava/lang/String;[F)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/r;->a([Lcom/c/a/t;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-super {p0, p1}, Lcom/c/a/x;->a([F)V

    goto :goto_0
.end method

.method public final varargs a([I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    if-eqz v0, :cond_1

    .line 334
    new-array v0, v1, [Lcom/c/a/t;

    iget-object v1, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Lcom/c/b/c;[I)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/r;->a([Lcom/c/a/t;)V

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_1
    new-array v0, v1, [Lcom/c/a/t;

    iget-object v1, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Ljava/lang/String;[I)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/r;->a([Lcom/c/a/t;)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-super {p0, p1}, Lcom/c/a/x;->a([I)V

    goto :goto_0
.end method

.method public final synthetic b()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 39
    .line 5500
    invoke-super {p0}, Lcom/c/a/x;->d()Lcom/c/a/x;

    move-result-object v0

    check-cast v0, Lcom/c/a/r;

    .line 39
    return-object v0
.end method

.method public final bridge synthetic b(J)Lcom/c/a/x;
    .locals 1

    .prologue
    .line 39
    .line 5427
    invoke-super {p0, p1, p2}, Lcom/c/a/x;->b(J)Lcom/c/a/x;

    .line 39
    return-object p0
.end method

.method final c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/c/a/r;->e:Z

    if-nez v0, :cond_4

    .line 405
    iget-object v0, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/c/c/a/a;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/r;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    sget-object v0, Lcom/c/a/r;->h:Ljava/util/Map;

    iget-object v2, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/c;

    .line 3118
    iget-object v2, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    if-eqz v2, :cond_0

    .line 3119
    iget-object v2, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    aget-object v2, v2, v1

    .line 3713
    iget-object v3, v2, Lcom/c/a/t;->a:Ljava/lang/String;

    .line 3121
    invoke-virtual {v2, v0}, Lcom/c/a/t;->a(Lcom/c/b/c;)V

    .line 3122
    iget-object v4, p0, Lcom/c/a/r;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    iget-object v3, p0, Lcom/c/a/r;->g:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    :cond_0
    iget-object v2, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    if-eqz v2, :cond_1

    .line 4097
    iget-object v2, v0, Lcom/c/b/c;->a:Ljava/lang/String;

    .line 3126
    iput-object v2, p0, Lcom/c/a/r;->j:Ljava/lang/String;

    .line 3128
    :cond_1
    iput-object v0, p0, Lcom/c/a/r;->k:Lcom/c/b/c;

    .line 3130
    iput-boolean v1, p0, Lcom/c/a/r;->e:Z

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    array-length v2, v0

    move v0, v1

    .line 409
    :goto_0
    if-ge v0, v2, :cond_3

    .line 410
    iget-object v1, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/c/a/r;->i:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/c/a/t;->a(Ljava/lang/Object;)V

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_3
    invoke-super {p0}, Lcom/c/a/x;->c()V

    .line 414
    :cond_4
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    .line 6500
    invoke-super {p0}, Lcom/c/a/x;->d()Lcom/c/a/x;

    move-result-object v0

    check-cast v0, Lcom/c/a/r;

    .line 39
    return-object v0
.end method

.method public final bridge synthetic d()Lcom/c/a/x;
    .locals 1

    .prologue
    .line 39
    .line 4500
    invoke-super {p0}, Lcom/c/a/x;->d()Lcom/c/a/x;

    move-result-object v0

    check-cast v0, Lcom/c/a/r;

    .line 39
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/r;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v0, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/r;->f:[Lcom/c/a/t;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/c/a/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    return-object v1
.end method
