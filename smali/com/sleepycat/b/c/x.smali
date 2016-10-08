.class public final Lcom/sleepycat/b/c/x;
.super Ljava/lang/Object;
.source "DbiStatDefinition.java"


# static fields
.field public static final A:Lcom/sleepycat/b/p/ag;

.field public static final B:Lcom/sleepycat/b/p/ag;

.field public static final C:Lcom/sleepycat/b/p/ag;

.field public static final D:Lcom/sleepycat/b/p/ag;

.field public static final E:Lcom/sleepycat/b/p/ag;

.field public static final F:Lcom/sleepycat/b/p/ag;

.field public static final G:Lcom/sleepycat/b/p/ag;

.field public static final H:Lcom/sleepycat/b/p/ag;

.field public static final I:Lcom/sleepycat/b/p/ag;

.field public static final J:Lcom/sleepycat/b/p/ag;

.field public static final K:Lcom/sleepycat/b/p/ag;

.field public static final L:Lcom/sleepycat/b/p/ag;

.field public static final M:Lcom/sleepycat/b/p/ag;

.field public static final N:Lcom/sleepycat/b/p/ag;

.field public static final O:Lcom/sleepycat/b/p/ag;

.field public static final P:Lcom/sleepycat/b/p/ag;

.field public static final Q:Lcom/sleepycat/b/p/ag;

.field public static final a:Lcom/sleepycat/b/p/ag;

.field public static final b:Lcom/sleepycat/b/p/ag;

.field public static final c:Lcom/sleepycat/b/p/ag;

.field public static final d:Lcom/sleepycat/b/p/ag;

.field public static final e:Lcom/sleepycat/b/p/ag;

.field public static final f:Lcom/sleepycat/b/p/ag;

.field public static final g:Lcom/sleepycat/b/p/ag;

.field public static final h:Lcom/sleepycat/b/p/ag;

.field public static final i:Lcom/sleepycat/b/p/ag;

.field public static final j:Lcom/sleepycat/b/p/ag;

.field public static final k:Lcom/sleepycat/b/p/ag;

.field public static final l:Lcom/sleepycat/b/p/ag;

.field public static final m:Lcom/sleepycat/b/p/ag;

.field public static final n:Lcom/sleepycat/b/p/ag;

.field public static final o:Lcom/sleepycat/b/p/ag;

.field public static final p:Lcom/sleepycat/b/p/ag;

.field public static final q:Lcom/sleepycat/b/p/ag;

.field public static final r:Lcom/sleepycat/b/p/ag;

.field public static final s:Lcom/sleepycat/b/p/ag;

.field public static final t:Lcom/sleepycat/b/p/ag;

.field public static final u:Lcom/sleepycat/b/p/ag;

.field public static final v:Lcom/sleepycat/b/p/ag;

.field public static final w:Lcom/sleepycat/b/p/ag;

.field public static final x:Lcom/sleepycat/b/p/ag;

.field public static final y:Lcom/sleepycat/b/p/ag;

.field public static final z:Lcom/sleepycat/b/p/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "sharedCacheTotalBytes"

    const-string v2, "Total amount of the shared JE cache in use, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->a:Lcom/sleepycat/b/p/ag;

    .line 37
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cacheTotalBytes"

    const-string v2, "Total amount of JE cache in use, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->b:Lcom/sleepycat/b/p/ag;

    .line 42
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dataBytes"

    const-string v2, "Amount of JE cache used for holding data, keys and internal Btree nodes, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->c:Lcom/sleepycat/b/p/ag;

    .line 48
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dataAdminBytes"

    const-string v2, "Amount of JE cache used for holding database metadata, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->d:Lcom/sleepycat/b/p/ag;

    .line 54
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "adminBytes"

    const-string v2, "Number of bytes of JE cache used for log cleaning metadata and other administrative structure, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->e:Lcom/sleepycat/b/p/ag;

    .line 61
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "lockBytes"

    const-string v2, "Number of bytes of JE cache used for holding locks and transactions, in bytes."

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->f:Lcom/sleepycat/b/p/ag;

    .line 68
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "btreeRelatchesRequired"

    const-string v2, "Returns the number of btree latch upgrades required while operating on this Environment. A measurement of contention."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->g:Lcom/sleepycat/b/p/ag;

    .line 74
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "environmentCreationTime"

    const-string v2, "Returns the time the Environment was created. "

    sget v3, Lcom/sleepycat/b/p/ah;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/c/x;->h:Lcom/sleepycat/b/p/ag;

    .line 81
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbDelete"

    const-string v2, "Number of times Database.delete is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->i:Lcom/sleepycat/b/p/ag;

    .line 85
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbGet"

    const-string v2, "Number of times Database.get is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->j:Lcom/sleepycat/b/p/ag;

    .line 89
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbGetSearchBoth"

    const-string v2, "Number of times Database.getSearchBoth is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->k:Lcom/sleepycat/b/p/ag;

    .line 94
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbPut"

    const-string v2, "Number of times Database.put is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->l:Lcom/sleepycat/b/p/ag;

    .line 98
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbPutNoDupData"

    const-string v2, "Number of times Database.putNoDupData is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->m:Lcom/sleepycat/b/p/ag;

    .line 103
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbPutNoOverWrite"

    const-string v2, "Number of times Database.putNoOverWrite is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->n:Lcom/sleepycat/b/p/ag;

    .line 108
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dbRemoveSequence"

    const-string v2, "Number of times Database.removeSequence is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->o:Lcom/sleepycat/b/p/ag;

    .line 113
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorDelete"

    const-string v2, "Number of times Cursor.delete is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->p:Lcom/sleepycat/b/p/ag;

    .line 117
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetCurrent"

    const-string v2, "Number of times Cursor.getCurrent is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->q:Lcom/sleepycat/b/p/ag;

    .line 121
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetFirst"

    const-string v2, "Number of times Cursor.getFirst is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->r:Lcom/sleepycat/b/p/ag;

    .line 125
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetLast"

    const-string v2, "Number of times Cursor.getLast is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->s:Lcom/sleepycat/b/p/ag;

    .line 129
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetNext"

    const-string v2, "Number of times Cursor.getNext is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->t:Lcom/sleepycat/b/p/ag;

    .line 133
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetNextDup"

    const-string v2, "Number of times Cursor.getNextDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->u:Lcom/sleepycat/b/p/ag;

    .line 137
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetNextNoDup"

    const-string v2, "Number of times Cursor.getNextNoDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->v:Lcom/sleepycat/b/p/ag;

    .line 142
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetPrev"

    const-string v2, "Number of times Cursor.getPrev is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->w:Lcom/sleepycat/b/p/ag;

    .line 146
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetPrevDup"

    const-string v2, "Number of times Cursor.getPrevDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->x:Lcom/sleepycat/b/p/ag;

    .line 150
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorGetPrevNoDup"

    const-string v2, "Number of times Cursor. getPrevNoDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->y:Lcom/sleepycat/b/p/ag;

    .line 155
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorPut"

    const-string v2, "Number of times Cursor.put is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->z:Lcom/sleepycat/b/p/ag;

    .line 159
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorPutCurrent"

    const-string v2, "Number of times Cursor.putCurrent is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->A:Lcom/sleepycat/b/p/ag;

    .line 163
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorPutNoDupData"

    const-string v2, "Number of times Cursor.putNoDupData is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->B:Lcom/sleepycat/b/p/ag;

    .line 168
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "cursorPutNoOverwrite"

    const-string v2, "Number of times Cursor.putNoOverwrite is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->C:Lcom/sleepycat/b/p/ag;

    .line 173
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorDelete"

    const-string v2, "Number of times SecondaryCursor.delete is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->D:Lcom/sleepycat/b/p/ag;

    .line 178
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetCurrent"

    const-string v2, "Number of times SecondaryCursor.getCurrent is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->E:Lcom/sleepycat/b/p/ag;

    .line 183
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetFirst"

    const-string v2, "Number of times SecondaryCursor.getFirst is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->F:Lcom/sleepycat/b/p/ag;

    .line 188
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetLast"

    const-string v2, "Number of times SecondaryCursor.getLast is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->G:Lcom/sleepycat/b/p/ag;

    .line 193
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetNext"

    const-string v2, "Number of times SecondaryCursor.getNext is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->H:Lcom/sleepycat/b/p/ag;

    .line 199
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetNextDup"

    const-string v2, "Number of times SecondaryCursor.getNextDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->I:Lcom/sleepycat/b/p/ag;

    .line 204
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetNextNoDup"

    const-string v2, "Number of times SecondaryCursor.getNextNoDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->J:Lcom/sleepycat/b/p/ag;

    .line 209
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetPrev"

    const-string v2, "Number of times SecondaryCursor.getPrev is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->K:Lcom/sleepycat/b/p/ag;

    .line 214
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetPrevDup"

    const-string v2, "Number of times SecondaryCursor.getPrevDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->L:Lcom/sleepycat/b/p/ag;

    .line 219
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryCursorGetPrevNoDup"

    const-string v2, "Number of times SecondaryCursor.getPrevNoDup is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->M:Lcom/sleepycat/b/p/ag;

    .line 224
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryDbDelete"

    const-string v2, "Number of times SecondaryDatabase.delete is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->N:Lcom/sleepycat/b/p/ag;

    .line 229
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryDbGet"

    const-string v2, "Number of times SecondaryDatabase.get is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->O:Lcom/sleepycat/b/p/ag;

    .line 234
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "secondaryDbGetSearchBoth"

    const-string v2, "Number of times SecondaryDatabase.getSearchBoth is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->P:Lcom/sleepycat/b/p/ag;

    .line 239
    new-instance v0, Lcom/sleepycat/b/p/ag;

    const-string v1, "dosCursorGetNext"

    const-string v2, "Number of times DiskOrderedCursor.getNext is called."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/x;->Q:Lcom/sleepycat/b/p/ag;

    return-void
.end method
