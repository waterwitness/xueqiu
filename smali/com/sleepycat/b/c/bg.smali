.class public final enum Lcom/sleepycat/b/c/bg;
.super Ljava/lang/Enum;
.source "StartupTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/bg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/c/bg;

.field public static final enum b:Lcom/sleepycat/b/c/bg;

.field public static final enum c:Lcom/sleepycat/b/c/bg;

.field public static final enum d:Lcom/sleepycat/b/c/bg;

.field public static final enum e:Lcom/sleepycat/b/c/bg;

.field public static final enum f:Lcom/sleepycat/b/c/bg;

.field public static final enum g:Lcom/sleepycat/b/c/bg;

.field public static final enum h:Lcom/sleepycat/b/c/bg;

.field public static final enum i:Lcom/sleepycat/b/c/bg;

.field public static final enum j:Lcom/sleepycat/b/c/bg;

.field public static final enum k:Lcom/sleepycat/b/c/bg;

.field public static final enum l:Lcom/sleepycat/b/c/bg;

.field public static final enum m:Lcom/sleepycat/b/c/bg;

.field public static final enum n:Lcom/sleepycat/b/c/bg;

.field public static final enum o:Lcom/sleepycat/b/c/bg;

.field public static final enum p:Lcom/sleepycat/b/c/bg;

.field public static final enum q:Lcom/sleepycat/b/c/bg;

.field public static final enum r:Lcom/sleepycat/b/c/bg;

.field public static final enum s:Lcom/sleepycat/b/c/bg;

.field private static final synthetic w:[Lcom/sleepycat/b/c/bg;


# instance fields
.field private t:[Lcom/sleepycat/b/c/bg;

.field private u:Lcom/sleepycat/b/c/bg;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "TOTAL_ENV_OPEN"

    const-string v2, "Environment Open"

    invoke-direct {v0, v1, v4, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    .line 58
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "TOTAL_RECOVERY"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    .line 59
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "FIND_END_OF_LOG"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    .line 60
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "FIND_LAST_CKPT"

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    .line 61
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "BUILD_TREE"

    invoke-direct {v0, v1, v8}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    .line 62
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "READ_MAP_INS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->f:Lcom/sleepycat/b/c/bg;

    .line 63
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "REDO_MAP_INS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->g:Lcom/sleepycat/b/c/bg;

    .line 64
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "UNDO_MAP_LNS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    .line 65
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "REDO_MAP_LNS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    .line 66
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "READ_INS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->j:Lcom/sleepycat/b/c/bg;

    .line 67
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "REDO_INS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->k:Lcom/sleepycat/b/c/bg;

    .line 68
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "UNDO_LNS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    .line 69
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "REDO_LNS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    .line 70
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "POPULATE_UP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    .line 71
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "REMOVE_TEMP_DBS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    .line 72
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "CKPT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    .line 73
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "TOTAL_JOIN_GROUP"

    const/16 v2, 0x10

    const-string v3, "Replication Join Group"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    .line 74
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "FIND_MASTER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    .line 75
    new-instance v0, Lcom/sleepycat/b/c/bg;

    const-string v1, "BECOME_CONSISTENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/bg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    .line 56
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/c/bg;->f:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sleepycat/b/c/bg;->g:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sleepycat/b/c/bg;->j:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sleepycat/b/c/bg;->k:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/c/bg;->w:[Lcom/sleepycat/b/c/bg;

    .line 89
    sget-object v0, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    new-array v1, v5, [Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->t:[Lcom/sleepycat/b/c/bg;

    .line 91
    sget-object v0, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->t:[Lcom/sleepycat/b/c/bg;

    .line 98
    sget-object v0, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->f:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/b/c/bg;->g:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v6

    sget-object v2, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v7

    sget-object v2, Lcom/sleepycat/b/c/bg;->j:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/sleepycat/b/c/bg;->k:Lcom/sleepycat/b/c/bg;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->t:[Lcom/sleepycat/b/c/bg;

    .line 107
    sget-object v0, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    new-array v1, v6, [Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    aput-object v2, v1, v5

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->t:[Lcom/sleepycat/b/c/bg;

    .line 111
    sget-object v0, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 112
    sget-object v0, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 113
    sget-object v0, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 114
    sget-object v0, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 115
    sget-object v0, Lcom/sleepycat/b/c/bg;->f:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 116
    sget-object v0, Lcom/sleepycat/b/c/bg;->g:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 117
    sget-object v0, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 118
    sget-object v0, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 119
    sget-object v0, Lcom/sleepycat/b/c/bg;->j:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 120
    sget-object v0, Lcom/sleepycat/b/c/bg;->k:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 121
    sget-object v0, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 122
    sget-object v0, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 123
    sget-object v0, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 124
    sget-object v0, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 125
    sget-object v0, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 127
    sget-object v0, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 128
    sget-object v0, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    sget-object v1, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    iput-object v1, v0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput-object p3, p0, Lcom/sleepycat/b/c/bg;->v:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/bg;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/c/bg;->u:Lcom/sleepycat/b/c/bg;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/c/bg;)[Lcom/sleepycat/b/c/bg;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/c/bg;->t:[Lcom/sleepycat/b/c/bg;

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/c/bg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/c/bg;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/bg;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sleepycat/b/c/bg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/bg;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/bg;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sleepycat/b/c/bg;->w:[Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/bg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/bg;

    return-object v0
.end method
