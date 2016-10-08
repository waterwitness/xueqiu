.class public Lcom/c/a/x;
.super Lcom/c/a/a;
.source "ValueAnimator.java"


# static fields
.field private static h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/c/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/x;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/x;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/x;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/x;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/x;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Lcom/c/a/w;

.field private static final p:Lcom/c/a/w;

.field private static z:J


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/z;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/c/a/t;

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:I

.field private s:F

.field private t:Z

.field private u:J

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/c/a/x;->h:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/c/a/x$1;

    invoke-direct {v0}, Lcom/c/a/x$1;-><init>()V

    sput-object v0, Lcom/c/a/x;->i:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lcom/c/a/x$2;

    invoke-direct {v0}, Lcom/c/a/x$2;-><init>()V

    sput-object v0, Lcom/c/a/x;->j:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Lcom/c/a/x$3;

    invoke-direct {v0}, Lcom/c/a/x$3;-><init>()V

    sput-object v0, Lcom/c/a/x;->k:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Lcom/c/a/x$4;

    invoke-direct {v0}, Lcom/c/a/x$4;-><init>()V

    sput-object v0, Lcom/c/a/x;->l:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Lcom/c/a/x$5;

    invoke-direct {v0}, Lcom/c/a/x$5;-><init>()V

    sput-object v0, Lcom/c/a/x;->m:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/c/a/x;->n:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lcom/c/a/l;

    invoke-direct {v0}, Lcom/c/a/l;-><init>()V

    sput-object v0, Lcom/c/a/x;->o:Lcom/c/a/w;

    .line 149
    new-instance v0, Lcom/c/a/j;

    invoke-direct {v0}, Lcom/c/a/j;-><init>()V

    sput-object v0, Lcom/c/a/x;->p:Lcom/c/a/w;

    .line 222
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/c/a/x;->z:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/a/x;->c:J

    .line 155
    iput-boolean v2, p0, Lcom/c/a/x;->q:Z

    .line 161
    iput v2, p0, Lcom/c/a/x;->r:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/x;->s:F

    .line 171
    iput-boolean v2, p0, Lcom/c/a/x;->t:Z

    .line 187
    iput v2, p0, Lcom/c/a/x;->d:I

    .line 197
    iput-boolean v2, p0, Lcom/c/a/x;->v:Z

    .line 203
    iput-boolean v2, p0, Lcom/c/a/x;->w:Z

    .line 209
    iput-boolean v2, p0, Lcom/c/a/x;->e:Z

    .line 216
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/c/a/x;->x:J

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/x;->y:J

    .line 226
    iput v2, p0, Lcom/c/a/x;->A:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/c/a/x;->B:I

    .line 240
    sget-object v0, Lcom/c/a/x;->n:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/c/a/x;->C:Landroid/view/animation/Interpolator;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/c/a/x;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/c/a/x;->y:J

    return-wide v0
.end method

.method static synthetic a(Lcom/c/a/x;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 43
    .line 5071
    iget-boolean v1, p0, Lcom/c/a/x;->t:Z

    if-nez v1, :cond_1

    .line 5072
    iput-boolean v0, p0, Lcom/c/a/x;->t:Z

    .line 5073
    iput-wide p1, p0, Lcom/c/a/x;->u:J

    .line 5084
    :cond_0
    const/4 v0, 0x0

    .line 5081
    :goto_0
    return v0

    .line 5075
    :cond_1
    iget-wide v2, p0, Lcom/c/a/x;->u:J

    sub-long v2, p1, v2

    .line 5076
    iget-wide v4, p0, Lcom/c/a/x;->y:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 5079
    iget-wide v4, p0, Lcom/c/a/x;->y:J

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/c/a/x;->b:J

    .line 5080
    iput v0, p0, Lcom/c/a/x;->d:I

    goto :goto_0
.end method

.method public static varargs b([F)Lcom/c/a/x;
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/c/a/x;

    invoke-direct {v0}, Lcom/c/a/x;-><init>()V

    .line 316
    invoke-virtual {v0, p0}, Lcom/c/a/x;->a([F)V

    .line 317
    return-object v0
.end method

.method public static varargs b([I)Lcom/c/a/x;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/c/a/x;

    invoke-direct {v0}, Lcom/c/a/x;-><init>()V

    .line 299
    invoke-virtual {v0, p0}, Lcom/c/a/x;->a([I)V

    .line 300
    return-object v0
.end method

.method static synthetic b(Lcom/c/a/x;)V
    .locals 4

    .prologue
    .line 43
    .line 5046
    invoke-virtual {p0}, Lcom/c/a/x;->c()V

    .line 5047
    sget-object v0, Lcom/c/a/x;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5048
    iget-wide v0, p0, Lcom/c/a/x;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5051
    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5054
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 5055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 5054
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/c/a/x;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/x;->v:Z

    return v0
.end method

.method private d(J)V
    .locals 5

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/c/a/x;->c()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/c/a/x;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 541
    iput-wide p1, p0, Lcom/c/a/x;->c:J

    .line 542
    const/4 v2, 0x2

    iput v2, p0, Lcom/c/a/x;->d:I

    .line 544
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/c/a/x;->b:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/c/a/x;->c(J)Z

    .line 546
    return-void
.end method

.method static synthetic d(Lcom/c/a/x;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 6025
    sget-object v0, Lcom/c/a/x;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6026
    sget-object v0, Lcom/c/a/x;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6027
    sget-object v0, Lcom/c/a/x;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6028
    iput v3, p0, Lcom/c/a/x;->d:I

    .line 6029
    iget-boolean v0, p0, Lcom/c/a/x;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6030
    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6032
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 6033
    :goto_0
    if-ge v2, v4, :cond_0

    .line 6034
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 6033
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 6037
    :cond_0
    iput-boolean v3, p0, Lcom/c/a/x;->v:Z

    .line 6038
    iput-boolean v3, p0, Lcom/c/a/x;->w:Z

    .line 43
    return-void
.end method

.method static synthetic f()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/x;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/x;->k:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/x;->j:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/x;->m:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/x;->l:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic k()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/c/a/x;->z:J

    return-wide v0
.end method


# virtual methods
.method public synthetic a(J)Lcom/c/a/a;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/c/a/x;->b(J)Lcom/c/a/x;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 951
    .line 3917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3918
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3920
    :cond_0
    iput-boolean v4, p0, Lcom/c/a/x;->q:Z

    .line 3921
    iput v4, p0, Lcom/c/a/x;->r:I

    .line 3922
    iput v4, p0, Lcom/c/a/x;->d:I

    .line 3923
    iput-boolean v5, p0, Lcom/c/a/x;->w:Z

    .line 3924
    iput-boolean v4, p0, Lcom/c/a/x;->t:Z

    .line 3925
    sget-object v0, Lcom/c/a/x;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3926
    iget-wide v0, p0, Lcom/c/a/x;->y:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 4556
    iget-boolean v0, p0, Lcom/c/a/x;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/c/a/x;->d:I

    if-nez v0, :cond_2

    :cond_1
    move-wide v0, v2

    .line 3928
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/c/a/x;->d(J)V

    .line 3929
    iput v4, p0, Lcom/c/a/x;->d:I

    .line 3930
    iput-boolean v5, p0, Lcom/c/a/x;->v:Z

    .line 3932
    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 3933
    iget-object v0, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 3936
    :goto_1
    if-ge v2, v3, :cond_3

    .line 3937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 3936
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 4559
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/a/x;->b:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 3941
    :cond_3
    sget-object v0, Lcom/c/a/x;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/y;

    .line 3942
    if-nez v0, :cond_4

    .line 3943
    new-instance v0, Lcom/c/a/y;

    invoke-direct {v0, v4}, Lcom/c/a/y;-><init>(B)V

    .line 3944
    sget-object v1, Lcom/c/a/x;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3946
    :cond_4
    invoke-virtual {v0, v4}, Lcom/c/a/y;->sendEmptyMessage(I)Z

    .line 952
    return-void
.end method

.method a(F)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1169
    iget-object v1, p0, Lcom/c/a/x;->C:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1170
    iput v2, p0, Lcom/c/a/x;->s:F

    .line 1171
    iget-object v1, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v3, v1

    move v1, v0

    .line 1172
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1173
    iget-object v4, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/c/a/t;->a(F)V

    .line 1172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 1177
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/z;

    invoke-interface {v0, p0}, Lcom/c/a/z;->a(Lcom/c/a/x;)V

    .line 1177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1181
    :cond_1
    return-void
.end method

.method public final a(Lcom/c/a/z;)V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method public varargs a([F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 405
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/c/a/t;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Ljava/lang/String;[F)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/x;->a([Lcom/c/a/t;)V

    .line 411
    :goto_1
    iput-boolean v2, p0, Lcom/c/a/x;->e:Z

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aget-object v0, v0, v2

    .line 408
    invoke-virtual {v0, p1}, Lcom/c/a/t;->a([F)V

    goto :goto_1
.end method

.method public varargs a([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 377
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/c/a/t;

    const-string v1, ""

    invoke-static {v1, p1}, Lcom/c/a/t;->a(Ljava/lang/String;[I)Lcom/c/a/t;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/c/a/x;->a([Lcom/c/a/t;)V

    .line 383
    :goto_1
    iput-boolean v2, p0, Lcom/c/a/x;->e:Z

    goto :goto_0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aget-object v0, v0, v2

    .line 380
    invoke-virtual {v0, p1}, Lcom/c/a/t;->a([I)V

    goto :goto_1
.end method

.method public final varargs a([Lcom/c/a/t;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 457
    iput-object p1, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/c/a/x;->g:Ljava/util/HashMap;

    move v0, v1

    .line 459
    :goto_0
    if-gtz v0, :cond_0

    .line 460
    aget-object v2, p1, v1

    .line 461
    iget-object v3, p0, Lcom/c/a/x;->g:Ljava/util/HashMap;

    .line 1713
    iget-object v4, v2, Lcom/c/a/t;->a:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v1, p0, Lcom/c/a/x;->e:Z

    .line 465
    return-void
.end method

.method public synthetic b()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/c/a/x;->d()Lcom/c/a/x;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/c/a/x;
    .locals 3

    .prologue
    .line 510
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iput-wide p1, p0, Lcom/c/a/x;->x:J

    .line 515
    return-object p0
.end method

.method c()V
    .locals 5

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/c/a/x;->e:Z

    if-nez v0, :cond_5

    .line 491
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v2, v0

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 493
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aget-object v3, v0, v1

    .line 2634
    iget-object v0, v3, Lcom/c/a/t;->j:Lcom/c/a/w;

    if-nez v0, :cond_0

    .line 2637
    iget-object v0, v3, Lcom/c/a/t;->d:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/c/a/t;->f:Lcom/c/a/w;

    :goto_1
    iput-object v0, v3, Lcom/c/a/t;->j:Lcom/c/a/w;

    .line 2641
    :cond_0
    iget-object v0, v3, Lcom/c/a/t;->j:Lcom/c/a/w;

    if-eqz v0, :cond_1

    .line 2644
    iget-object v0, v3, Lcom/c/a/t;->e:Lcom/c/a/q;

    iget-object v3, v3, Lcom/c/a/t;->j:Lcom/c/a/w;

    .line 3139
    iput-object v3, v0, Lcom/c/a/q;->f:Lcom/c/a/w;

    .line 492
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2637
    :cond_2
    iget-object v0, v3, Lcom/c/a/t;->d:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/c/a/t;->g:Lcom/c/a/w;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 495
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/x;->e:Z

    .line 497
    :cond_5
    return-void
.end method

.method final c(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1100
    .line 1102
    iget v2, p0, Lcom/c/a/x;->d:I

    if-nez v2, :cond_0

    .line 1103
    iput v0, p0, Lcom/c/a/x;->d:I

    .line 1104
    iget-wide v2, p0, Lcom/c/a/x;->c:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    .line 1105
    iput-wide p1, p0, Lcom/c/a/x;->b:J

    .line 1112
    :cond_0
    :goto_0
    iget v2, p0, Lcom/c/a/x;->d:I

    packed-switch v2, :pswitch_data_0

    .line 1143
    :goto_1
    return v1

    .line 1107
    :cond_1
    iget-wide v2, p0, Lcom/c/a/x;->c:J

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/c/a/x;->b:J

    .line 1109
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/c/a/x;->c:J

    goto :goto_0

    .line 1115
    :pswitch_0
    iget-wide v2, p0, Lcom/c/a/x;->x:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/c/a/x;->b:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    iget-wide v6, p0, Lcom/c/a/x;->x:J

    long-to-float v3, v6

    div-float/2addr v2, v3

    .line 1116
    :goto_2
    cmpl-float v3, v2, v4

    if-ltz v3, :cond_9

    .line 1117
    iget v3, p0, Lcom/c/a/x;->r:I

    iget v5, p0, Lcom/c/a/x;->A:I

    if-lt v3, v5, :cond_2

    iget v3, p0, Lcom/c/a/x;->A:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_8

    .line 1119
    :cond_2
    iget-object v3, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1120
    iget-object v3, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v1

    .line 1121
    :goto_3
    if-ge v3, v5, :cond_4

    .line 1122
    iget-object v6, p0, Lcom/c/a/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1121
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v2, v4

    .line 1115
    goto :goto_2

    .line 1125
    :cond_4
    iget v3, p0, Lcom/c/a/x;->B:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 1126
    iget-boolean v3, p0, Lcom/c/a/x;->q:Z

    if-eqz v3, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/c/a/x;->q:Z

    .line 1128
    :cond_6
    iget v0, p0, Lcom/c/a/x;->r:I

    float-to-int v3, v2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/c/a/x;->r:I

    .line 1129
    rem-float v0, v2, v4

    .line 1130
    iget-wide v2, p0, Lcom/c/a/x;->b:J

    iget-wide v6, p0, Lcom/c/a/x;->x:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/c/a/x;->b:J

    .line 1136
    :goto_4
    iget-boolean v2, p0, Lcom/c/a/x;->q:Z

    if-eqz v2, :cond_7

    .line 1137
    sub-float v0, v4, v0

    .line 1139
    :cond_7
    invoke-virtual {p0, v0}, Lcom/c/a/x;->a(F)V

    goto :goto_1

    .line 1133
    :cond_8
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_4

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/c/a/x;->d()Lcom/c/a/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/c/a/x;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1185
    invoke-super {p0}, Lcom/c/a/a;->b()Lcom/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/c/a/x;

    .line 1186
    iget-object v2, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    .line 1188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1190
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1191
    iget-object v5, v0, Lcom/c/a/x;->D:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/c/a/x;->c:J

    .line 1195
    iput-boolean v1, v0, Lcom/c/a/x;->q:Z

    .line 1196
    iput v1, v0, Lcom/c/a/x;->r:I

    .line 1197
    iput-boolean v1, v0, Lcom/c/a/x;->e:Z

    .line 1198
    iput v1, v0, Lcom/c/a/x;->d:I

    .line 1199
    iput-boolean v1, v0, Lcom/c/a/x;->t:Z

    .line 1200
    iget-object v2, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    .line 1201
    if-eqz v2, :cond_1

    .line 1202
    array-length v3, v2

    .line 1203
    new-array v4, v3, [Lcom/c/a/t;

    iput-object v4, v0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/c/a/x;->g:Ljava/util/HashMap;

    .line 1205
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1206
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/c/a/t;->a()Lcom/c/a/t;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aput-object v4, v5, v1

    .line 1208
    iget-object v5, v0, Lcom/c/a/x;->g:Ljava/util/HashMap;

    .line 4713
    iget-object v6, v4, Lcom/c/a/t;->a:Ljava/lang/String;

    .line 1208
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1211
    :cond_1
    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/c/a/t;->b()Ljava/lang/Object;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    iget-object v0, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    if-eqz v0, :cond_0

    .line 1258
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/x;->f:[Lcom/c/a/t;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/c/a/t;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    return-object v1
.end method
