.class public final Lcom/d/a/b/i;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# static fields
.field public static final a:I


# instance fields
.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:I

.field public e:Z

.field public f:I

.field public g:J

.field public h:I

.field public i:Lcom/d/a/a/b/c;

.field public j:Lcom/d/a/a/a/b;

.field public k:Lcom/d/a/a/a/b/a;

.field public l:Lcom/d/a/b/d/b;

.field public m:Lcom/d/a/b/d;

.field private n:Landroid/content/Context;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/d/a/b/g/a;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lcom/d/a/b/b/d;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/d/a/b/a/h;->a:I

    sput v0, Lcom/d/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lcom/d/a/b/i;->o:I

    .line 167
    iput v2, p0, Lcom/d/a/b/i;->p:I

    .line 168
    iput v2, p0, Lcom/d/a/b/i;->q:I

    .line 169
    iput v2, p0, Lcom/d/a/b/i;->r:I

    .line 170
    iput-object v3, p0, Lcom/d/a/b/i;->s:Lcom/d/a/b/g/a;

    .line 172
    iput-object v3, p0, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lcom/d/a/b/i;->t:Z

    .line 175
    iput-boolean v2, p0, Lcom/d/a/b/i;->u:Z

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/d/a/b/i;->d:I

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/d/a/b/i;->v:I

    .line 179
    iput-boolean v2, p0, Lcom/d/a/b/i;->e:Z

    .line 180
    sget v0, Lcom/d/a/b/i;->a:I

    iput v0, p0, Lcom/d/a/b/i;->w:I

    .line 182
    iput v2, p0, Lcom/d/a/b/i;->f:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/d/a/b/i;->g:J

    .line 184
    iput v2, p0, Lcom/d/a/b/i;->h:I

    .line 186
    iput-object v3, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    .line 187
    iput-object v3, p0, Lcom/d/a/b/i;->j:Lcom/d/a/a/a/b;

    .line 188
    iput-object v3, p0, Lcom/d/a/b/i;->k:Lcom/d/a/a/a/b/a;

    .line 189
    iput-object v3, p0, Lcom/d/a/b/i;->l:Lcom/d/a/b/d/b;

    .line 191
    iput-object v3, p0, Lcom/d/a/b/i;->m:Lcom/d/a/b/d;

    .line 193
    iput-boolean v2, p0, Lcom/d/a/b/i;->y:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/i;->n:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/d/a/b/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->o:I

    return v0
.end method

.method static synthetic c(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->p:I

    return v0
.end method

.method static synthetic d(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->q:I

    return v0
.end method

.method static synthetic e(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->r:I

    return v0
.end method

.method static synthetic f(Lcom/d/a/b/i;)Lcom/d/a/b/g/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->s:Lcom/d/a/b/g/a;

    return-object v0
.end method

.method static synthetic g(Lcom/d/a/b/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/d/a/b/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->d:I

    return v0
.end method

.method static synthetic j(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->v:I

    return v0
.end method

.method static synthetic k(Lcom/d/a/b/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/d/a/b/i;->w:I

    return v0
.end method

.method static synthetic l(Lcom/d/a/b/i;)Lcom/d/a/a/a/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->j:Lcom/d/a/a/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/d/a/b/i;)Lcom/d/a/a/b/c;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    return-object v0
.end method

.method static synthetic n(Lcom/d/a/b/i;)Lcom/d/a/b/d;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->m:Lcom/d/a/b/d;

    return-object v0
.end method

.method static synthetic o(Lcom/d/a/b/i;)Lcom/d/a/b/d/b;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->l:Lcom/d/a/b/d/b;

    return-object v0
.end method

.method static synthetic p(Lcom/d/a/b/i;)Lcom/d/a/b/b/d;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/d/a/b/i;->x:Lcom/d/a/b/b/d;

    return-object v0
.end method

.method static synthetic q(Lcom/d/a/b/i;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/i;->t:Z

    return v0
.end method

.method static synthetic r(Lcom/d/a/b/i;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/i;->u:Z

    return v0
.end method

.method static synthetic s(Lcom/d/a/b/i;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/d/a/b/i;->y:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/d/a/b/h;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 559
    .line 1564
    iget-object v0, p0, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 1565
    iget v0, p0, Lcom/d/a/b/i;->d:I

    iget v1, p0, Lcom/d/a/b/i;->v:I

    iget v2, p0, Lcom/d/a/b/i;->w:I

    invoke-static {v0, v1, v2}, Lcom/d/a/b/a;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    .line 1570
    :goto_0
    iget-object v0, p0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_9

    .line 1571
    iget v0, p0, Lcom/d/a/b/i;->d:I

    iget v1, p0, Lcom/d/a/b/i;->v:I

    iget v2, p0, Lcom/d/a/b/i;->w:I

    invoke-static {v0, v1, v2}, Lcom/d/a/b/a;->a(III)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    .line 1576
    :goto_1
    iget-object v0, p0, Lcom/d/a/b/i;->j:Lcom/d/a/a/a/b;

    if-nez v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/d/a/b/i;->k:Lcom/d/a/a/a/b/a;

    if-nez v0, :cond_0

    .line 2073
    new-instance v0, Lcom/d/a/a/a/b/b;

    invoke-direct {v0}, Lcom/d/a/a/a/b/b;-><init>()V

    .line 1578
    iput-object v0, p0, Lcom/d/a/b/i;->k:Lcom/d/a/a/a/b/a;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/i;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/d/a/b/i;->k:Lcom/d/a/a/a/b/a;

    iget-wide v2, p0, Lcom/d/a/b/i;->g:J

    iget v4, p0, Lcom/d/a/b/i;->h:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/d/a/b/a;->a(Landroid/content/Context;Lcom/d/a/a/a/b/a;JI)Lcom/d/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/i;->j:Lcom/d/a/a/a/b;

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    if-nez v0, :cond_3

    .line 1584
    iget v0, p0, Lcom/d/a/b/i;->f:I

    .line 2111
    if-nez v0, :cond_2

    .line 2112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 2114
    :cond_2
    new-instance v1, Lcom/d/a/a/b/a/c;

    invoke-direct {v1, v0}, Lcom/d/a/a/b/a/c;-><init>(I)V

    .line 1584
    iput-object v1, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    .line 1586
    :cond_3
    iget-boolean v0, p0, Lcom/d/a/b/i;->e:Z

    if-eqz v0, :cond_4

    .line 1587
    new-instance v0, Lcom/d/a/a/b/a/a;

    iget-object v1, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    .line 3051
    new-instance v2, Lcom/d/a/c/e$1;

    invoke-direct {v2}, Lcom/d/a/c/e$1;-><init>()V

    .line 1587
    invoke-direct {v0, v1, v2}, Lcom/d/a/a/b/a/a;-><init>(Lcom/d/a/a/b/c;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    .line 1589
    :cond_4
    iget-object v0, p0, Lcom/d/a/b/i;->l:Lcom/d/a/b/d/b;

    if-nez v0, :cond_5

    .line 1590
    iget-object v0, p0, Lcom/d/a/b/i;->n:Landroid/content/Context;

    .line 3119
    new-instance v1, Lcom/d/a/b/d/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/d/a;-><init>(Landroid/content/Context;)V

    .line 1590
    iput-object v1, p0, Lcom/d/a/b/i;->l:Lcom/d/a/b/d/b;

    .line 1592
    :cond_5
    iget-object v0, p0, Lcom/d/a/b/i;->x:Lcom/d/a/b/b/d;

    if-nez v0, :cond_6

    .line 1593
    iget-boolean v0, p0, Lcom/d/a/b/i;->y:Z

    .line 3124
    new-instance v1, Lcom/d/a/b/b/a;

    invoke-direct {v1, v0}, Lcom/d/a/b/b/a;-><init>(Z)V

    .line 1593
    iput-object v1, p0, Lcom/d/a/b/i;->x:Lcom/d/a/b/b/d;

    .line 1595
    :cond_6
    iget-object v0, p0, Lcom/d/a/b/i;->m:Lcom/d/a/b/d;

    if-nez v0, :cond_7

    .line 3507
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    .line 1596
    iput-object v0, p0, Lcom/d/a/b/i;->m:Lcom/d/a/b/d;

    .line 560
    :cond_7
    new-instance v0, Lcom/d/a/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/d/a/b/h;-><init>(Lcom/d/a/b/i;B)V

    return-object v0

    .line 1568
    :cond_8
    iput-boolean v3, p0, Lcom/d/a/b/i;->t:Z

    goto/16 :goto_0

    .line 1574
    :cond_9
    iput-boolean v3, p0, Lcom/d/a/b/i;->u:Z

    goto :goto_1
.end method
