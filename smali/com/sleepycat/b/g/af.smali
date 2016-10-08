.class public Lcom/sleepycat/b/g/af;
.super Ljava/lang/Object;
.source "LogEntryType.java"


# static fields
.field public static final A:Lcom/sleepycat/b/g/af;

.field public static final B:Lcom/sleepycat/b/g/af;

.field public static final C:Lcom/sleepycat/b/g/af;

.field public static final D:Lcom/sleepycat/b/g/af;

.field public static final E:Lcom/sleepycat/b/g/af;

.field public static final F:Lcom/sleepycat/b/g/af;

.field public static final G:Lcom/sleepycat/b/g/af;

.field public static final H:Lcom/sleepycat/b/g/af;

.field public static final I:Lcom/sleepycat/b/g/af;

.field public static final J:Lcom/sleepycat/b/g/af;

.field static final synthetic Q:Z

.field private static R:[Lcom/sleepycat/b/g/af;

.field public static final a:Lcom/sleepycat/b/g/af;

.field public static final b:Lcom/sleepycat/b/g/af;

.field public static final c:Lcom/sleepycat/b/g/af;

.field public static final d:Lcom/sleepycat/b/g/af;

.field public static final e:Lcom/sleepycat/b/g/af;

.field public static final f:Lcom/sleepycat/b/g/af;

.field public static final g:Lcom/sleepycat/b/g/af;

.field public static final h:Lcom/sleepycat/b/g/af;

.field public static final i:Lcom/sleepycat/b/g/af;

.field public static final j:Lcom/sleepycat/b/g/af;

.field public static final k:Lcom/sleepycat/b/g/af;

.field public static final l:Lcom/sleepycat/b/g/af;

.field public static final m:Lcom/sleepycat/b/g/af;

.field public static final n:Lcom/sleepycat/b/g/af;

.field public static final o:Lcom/sleepycat/b/g/af;

.field public static final p:Lcom/sleepycat/b/g/af;

.field public static final q:Lcom/sleepycat/b/g/af;

.field public static final r:Lcom/sleepycat/b/g/af;

.field public static final s:Lcom/sleepycat/b/g/af;

.field public static final t:Lcom/sleepycat/b/g/af;

.field public static final u:Lcom/sleepycat/b/g/af;

.field public static final v:Lcom/sleepycat/b/g/af;

.field public static final w:Lcom/sleepycat/b/g/af;

.field public static final x:Lcom/sleepycat/b/g/af;

.field public static final y:Lcom/sleepycat/b/g/af;

.field public static final z:Lcom/sleepycat/b/g/af;


# instance fields
.field public final K:B

.field final L:Ljava/lang/String;

.field public final M:Lcom/sleepycat/b/g/a/m;

.field public N:Lcom/sleepycat/b/g/aj;

.field O:Lcom/sleepycat/b/g/ag;

.field public P:Lcom/sleepycat/b/g/ai;

.field private S:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x24

    const/4 v0, 0x1

    .line 63
    const-class v1, Lcom/sleepycat/b/g/af;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/sleepycat/b/g/af;->Q:Z

    .line 162
    new-array v1, v7, [Lcom/sleepycat/b/g/af;

    sput-object v1, Lcom/sleepycat/b/g/af;->R:[Lcom/sleepycat/b/g/af;

    .line 187
    const-string v1, "LN_TX"

    const-class v2, Lcom/sleepycat/b/l/y;

    invoke-static {v2}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->e:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->a:Lcom/sleepycat/b/g/af;

    .line 200
    const/4 v0, 0x2

    const-string v1, "LN"

    const-class v2, Lcom/sleepycat/b/l/y;

    invoke-static {v2}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->e:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->b:Lcom/sleepycat/b/g/af;

    .line 209
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/4 v1, 0x3

    const-string v2, "MapLN_TX"

    const-class v3, Lcom/sleepycat/b/l/aa;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->c:Lcom/sleepycat/b/g/af;

    .line 217
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/4 v1, 0x4

    const-string v2, "MapLN"

    const-class v3, Lcom/sleepycat/b/l/aa;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->d:Lcom/sleepycat/b/g/af;

    .line 225
    const/4 v0, 0x5

    const-string v1, "NameLN_TX"

    new-instance v2, Lcom/sleepycat/b/g/a/o;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/o;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->d:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->e:Lcom/sleepycat/b/g/af;

    .line 234
    const/4 v0, 0x6

    const-string v1, "NameLN"

    new-instance v2, Lcom/sleepycat/b/g/a/o;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/o;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->d:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->f:Lcom/sleepycat/b/g/af;

    .line 244
    const/4 v0, 0x7

    const-string v1, "DelDupLN_TX"

    new-instance v2, Lcom/sleepycat/b/g/a/g;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/g;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->e:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->g:Lcom/sleepycat/b/g/af;

    .line 254
    const/16 v0, 0x8

    const-string v1, "DelDupLN"

    new-instance v2, Lcom/sleepycat/b/g/a/g;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/g;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->e:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->h:Lcom/sleepycat/b/g/af;

    .line 264
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x9

    const-string v2, "DupCountLN_TX"

    const-class v3, Lcom/sleepycat/b/l/a/d;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->c:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->i:Lcom/sleepycat/b/g/af;

    .line 273
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xa

    const-string v2, "DupCountLN"

    const-class v3, Lcom/sleepycat/b/l/a/d;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->c:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->j:Lcom/sleepycat/b/g/af;

    .line 281
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xb

    const-string v2, "FileSummaryLN"

    const-class v3, Lcom/sleepycat/b/l/h;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/k;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->k:Lcom/sleepycat/b/g/af;

    .line 289
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xc

    const-string v2, "IN"

    const-class v3, Lcom/sleepycat/b/l/j;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/j;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/j;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->b:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    .line 297
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xd

    const-string v2, "BIN"

    const-class v3, Lcom/sleepycat/b/l/a;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/j;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/j;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->b:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->m:Lcom/sleepycat/b/g/af;

    .line 306
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xe

    const-string v2, "DIN"

    const-class v3, Lcom/sleepycat/b/l/a/b;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/j;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/j;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->c:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->n:Lcom/sleepycat/b/g/af;

    .line 315
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0xf

    const-string v2, "DBIN"

    const-class v3, Lcom/sleepycat/b/l/a/a;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/j;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/j;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->c:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->o:Lcom/sleepycat/b/g/af;

    .line 327
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x10

    const-string v2, "DbTree"

    const-class v3, Lcom/sleepycat/b/c/p;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->b:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    .line 337
    const/16 v0, 0x11

    const-string v1, "Commit"

    new-instance v2, Lcom/sleepycat/b/g/a/e;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/e;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->a:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    .line 346
    const/16 v0, 0x12

    const-string v1, "Abort"

    new-instance v2, Lcom/sleepycat/b/g/a/a;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/a;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->a:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    .line 355
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x13

    const-string v2, "CkptStart"

    const-class v3, Lcom/sleepycat/b/h/b;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->s:Lcom/sleepycat/b/g/af;

    .line 364
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x14

    const-string v2, "CkptEnd"

    const-class v3, Lcom/sleepycat/b/h/a;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    .line 374
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x15

    const-string v2, "INDelete"

    const-class v3, Lcom/sleepycat/b/l/a/e;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->u:Lcom/sleepycat/b/g/af;

    .line 383
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x16

    const-string v2, "BINDelta"

    new-instance v3, Lcom/sleepycat/b/g/a/b;

    const-class v4, Lcom/sleepycat/b/l/c;

    invoke-direct {v3, v4}, Lcom/sleepycat/b/g/a/b;-><init>(Ljava/lang/Class;)V

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    .line 393
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x17

    const-string v2, "DupBINDelta"

    new-instance v3, Lcom/sleepycat/b/g/a/b;

    const-class v4, Lcom/sleepycat/b/l/c;

    invoke-direct {v3, v4}, Lcom/sleepycat/b/g/a/b;-><init>(Ljava/lang/Class;)V

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->w:Lcom/sleepycat/b/g/af;

    .line 403
    const/16 v0, 0x18

    const-string v1, "Trace"

    new-instance v2, Lcom/sleepycat/b/g/a/s;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/s;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->b:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->x:Lcom/sleepycat/b/g/af;

    .line 413
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x19

    const-string v2, "FileHeader"

    new-instance v3, Lcom/sleepycat/b/g/a/h;

    const-class v4, Lcom/sleepycat/b/g/l;

    invoke-direct {v3, v4}, Lcom/sleepycat/b/g/a/h;-><init>(Ljava/lang/Class;)V

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    .line 423
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x1a

    const-string v2, "INDupDelete"

    const-class v3, Lcom/sleepycat/b/l/a/f;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->z:Lcom/sleepycat/b/g/af;

    .line 432
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x1b

    const-string v2, "Prepare"

    const-class v3, Lcom/sleepycat/b/n/ak;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->A:Lcom/sleepycat/b/g/af;

    .line 441
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x1c

    const-string v2, "RollbackStart"

    const-class v3, Lcom/sleepycat/b/n/v;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    .line 450
    new-instance v0, Lcom/sleepycat/b/g/af;

    const/16 v1, 0x1d

    const-string v2, "RollbackEnd"

    const-class v3, Lcom/sleepycat/b/n/u;

    invoke-static {v3}, Lcom/sleepycat/b/g/a/q;->b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/q;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v5, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V

    sput-object v0, Lcom/sleepycat/b/g/af;->C:Lcom/sleepycat/b/g/af;

    .line 459
    const/16 v0, 0x1e

    const-string v1, "Matchpoint"

    new-instance v2, Lcom/sleepycat/b/g/a/n;

    invoke-direct {v2}, Lcom/sleepycat/b/g/a/n;-><init>()V

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    sget-object v4, Lcom/sleepycat/b/g/ag;->a:Lcom/sleepycat/b/g/ag;

    sget-object v5, Lcom/sleepycat/b/g/ai;->a:Lcom/sleepycat/b/g/ai;

    sget v6, Lcom/sleepycat/b/g/ah;->a:I

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/g/af;->a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/af;->D:Lcom/sleepycat/b/g/af;

    .line 468
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const/16 v1, 0x1f

    const-string v2, "DEL_LN_TX"

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->E:Lcom/sleepycat/b/g/af;

    .line 471
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const/16 v1, 0x20

    const-string v2, "DEL_LN"

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->F:Lcom/sleepycat/b/g/af;

    .line 474
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const/16 v1, 0x21

    const-string v2, "INS_LN_TX"

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->G:Lcom/sleepycat/b/g/af;

    .line 477
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const/16 v1, 0x22

    const-string v2, "INS_LN"

    sget-object v3, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->H:Lcom/sleepycat/b/g/af;

    .line 480
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const/16 v1, 0x23

    const-string v2, "UPD_LN_TX"

    sget-object v3, Lcom/sleepycat/b/g/aj;->a:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->I:Lcom/sleepycat/b/g/af;

    .line 483
    new-instance v0, Lcom/sleepycat/b/g/ak;

    const-string v1, "UPD_LN"

    sget-object v2, Lcom/sleepycat/b/g/aj;->b:Lcom/sleepycat/b/g/aj;

    invoke-direct {v0, v7, v1, v2}, Lcom/sleepycat/b/g/ak;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/aj;)V

    sput-object v0, Lcom/sleepycat/b/g/af;->J:Lcom/sleepycat/b/g/af;

    return-void

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-byte p1, p0, Lcom/sleepycat/b/g/af;->K:B

    .line 527
    iput-object v0, p0, Lcom/sleepycat/b/g/af;->L:Ljava/lang/String;

    .line 528
    iput-object v0, p0, Lcom/sleepycat/b/g/af;->M:Lcom/sleepycat/b/g/a/m;

    .line 529
    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;I)V
    .locals 8

    .prologue
    .line 549
    sget-object v6, Lcom/sleepycat/b/g/ai;->c:Lcom/sleepycat/b/g/ai;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)V

    .line 551
    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)V
    .locals 2

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-byte p1, p0, Lcom/sleepycat/b/g/af;->K:B

    .line 590
    iput-object p2, p0, Lcom/sleepycat/b/g/af;->L:Ljava/lang/String;

    .line 591
    iput-object p3, p0, Lcom/sleepycat/b/g/af;->M:Lcom/sleepycat/b/g/a/m;

    .line 592
    iput-object p4, p0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 593
    iput-object p5, p0, Lcom/sleepycat/b/g/af;->O:Lcom/sleepycat/b/g/ag;

    .line 594
    iput-object p6, p0, Lcom/sleepycat/b/g/af;->P:Lcom/sleepycat/b/g/ai;

    .line 595
    iput p7, p0, Lcom/sleepycat/b/g/af;->S:I

    .line 596
    invoke-interface {p3, p0}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/g/af;)V

    .line 597
    sget-object v0, Lcom/sleepycat/b/g/af;->R:[Lcom/sleepycat/b/g/af;

    add-int/lit8 v1, p1, -0x1

    aput-object p0, v0, v1

    .line 599
    sget-boolean v0, Lcom/sleepycat/b/g/af;->Q:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 602
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/g/af;->Q:Z

    if-nez v0, :cond_2

    .line 1777
    iget-boolean v0, p6, Lcom/sleepycat/b/g/ai;->d:Z

    .line 602
    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/sleepycat/b/g/a/p;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Replicable log types must have replicable log entries"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 603
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;IB)V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)V

    return-void
.end method

.method public static a(B)Lcom/sleepycat/b/g/af;
    .locals 2

    .prologue
    .line 609
    if-lez p0, :cond_0

    const/16 v0, 0x24

    if-le p0, v0, :cond_1

    .line 610
    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sleepycat/b/g/af;->R:[Lcom/sleepycat/b/g/af;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static a(BLjava/lang/String;Lcom/sleepycat/b/g/a/p;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)Lcom/sleepycat/b/g/af;
    .locals 8

    .prologue
    .line 572
    new-instance v0, Lcom/sleepycat/b/g/af;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/g/af;-><init>(BLjava/lang/String;Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/aj;Lcom/sleepycat/b/g/ag;Lcom/sleepycat/b/g/ai;I)V

    return-object v0
.end method

.method public static a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 621
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x24

    if-ge v0, v2, :cond_0

    .line 622
    sget-object v2, Lcom/sleepycat/b/g/af;->R:[Lcom/sleepycat/b/g/af;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return-object v1
.end method

.method public static a(IBIB)Z
    .locals 1

    .prologue
    .line 859
    invoke-static {p1}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 860
    invoke-virtual {v0, p0, p2, p3}, Lcom/sleepycat/b/g/af;->a(IIB)Z

    move-result v0

    return v0
.end method

.method static b(B)Z
    .locals 1

    .prologue
    .line 651
    if-lez p0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(B)Z
    .locals 1

    .prologue
    .line 808
    invoke-static {p0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 1800
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->P:Lcom/sleepycat/b/g/ai;

    .line 2781
    iget-boolean v0, v0, Lcom/sleepycat/b/g/ai;->e:Z

    .line 808
    return v0
.end method


# virtual methods
.method public a(IIB)Z
    .locals 1

    .prologue
    .line 755
    iget-byte v0, p0, Lcom/sleepycat/b/g/af;->K:B

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sleepycat/b/g/af;->M:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->g()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 831
    iget v0, p0, Lcom/sleepycat/b/g/af;->S:I

    sget v1, Lcom/sleepycat/b/g/ah;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(B)Z
    .locals 1

    .prologue
    .line 667
    iget-byte v0, p0, Lcom/sleepycat/b/g/af;->K:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 835
    iget v0, p0, Lcom/sleepycat/b/g/af;->S:I

    sget v1, Lcom/sleepycat/b/g/ah;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Lcom/sleepycat/b/g/af;->S:I

    sget v1, Lcom/sleepycat/b/g/ah;->d:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/g/af;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    if-ne p0, p1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 682
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/b/g/af;

    if-nez v2, :cond_2

    move v0, v1

    .line 683
    goto :goto_0

    .line 686
    :cond_2
    iget-byte v2, p0, Lcom/sleepycat/b/g/af;->K:B

    check-cast p1, Lcom/sleepycat/b/g/af;

    iget-byte v3, p1, Lcom/sleepycat/b/g/af;->K:B

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 843
    iget v0, p0, Lcom/sleepycat/b/g/af;->S:I

    sget v1, Lcom/sleepycat/b/g/ah;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 694
    iget-byte v0, p0, Lcom/sleepycat/b/g/af;->K:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/sleepycat/b/g/af;->L:Ljava/lang/String;

    return-object v0
.end method
