.class public abstract Lcom/sleepycat/b/n/l;
.super Ljava/lang/Object;
.source "LockManager.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field static final a:J

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/n/y;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic m:Z

.field private static final n:J

.field private static r:Lcom/sleepycat/b/c/av;

.field private static s:Z


# instance fields
.field public f:I

.field public g:[Lcom/sleepycat/b/f/a;

.field final h:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/n/e;",
            ">;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Lcom/sleepycat/b/c/ao;

.field public final k:Lcom/sleepycat/b/p/ai;

.field final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/b/p/ar",
            "<",
            "Lcom/sleepycat/b/n/y;",
            ">;>;"
        }
    .end annotation
.end field

.field private final o:Lcom/sleepycat/b/c/ad;

.field private final p:Lcom/sleepycat/b/p/z;

.field private final q:Lcom/sleepycat/b/p/z;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 64
    const-class v0, Lcom/sleepycat/b/n/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/l;->m:Z

    .line 73
    sget v0, Lcom/sleepycat/b/c/ao;->I:I

    sget v2, Lcom/sleepycat/b/c/ao;->m:I

    add-int/2addr v0, v2

    sget v2, Lcom/sleepycat/b/c/ao;->g:I

    add-int/2addr v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcom/sleepycat/b/n/l;->a:J

    .line 78
    sget v0, Lcom/sleepycat/b/c/ao;->J:I

    sget v2, Lcom/sleepycat/b/c/ao;->m:I

    add-int/2addr v0, v2

    sget v2, Lcom/sleepycat/b/c/ao;->g:I

    add-int/2addr v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcom/sleepycat/b/n/l;->b:J

    .line 83
    sget-wide v2, Lcom/sleepycat/b/n/l;->a:J

    sub-long v2, v4, v2

    sput-wide v2, Lcom/sleepycat/b/n/l;->c:J

    .line 86
    sget-wide v2, Lcom/sleepycat/b/n/l;->b:J

    sub-long v2, v4, v2

    sput-wide v2, Lcom/sleepycat/b/n/l;->d:J

    .line 89
    sget v0, Lcom/sleepycat/b/c/ao;->I:I

    sget v2, Lcom/sleepycat/b/c/ao;->J:I

    sub-int/2addr v0, v2

    sget v2, Lcom/sleepycat/b/c/ao;->K:I

    add-int/2addr v0, v2

    int-to-long v2, v0

    sput-wide v2, Lcom/sleepycat/b/n/l;->n:J

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/n/l;->e:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/sleepycat/b/c/av;

    invoke-direct {v0}, Lcom/sleepycat/b/c/av;-><init>()V

    sput-object v0, Lcom/sleepycat/b/n/l;->r:Lcom/sleepycat/b/c/av;

    .line 110
    sput-boolean v1, Lcom/sleepycat/b/n/l;->s:Z

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/n/l;->f:I

    .line 3392
    iget-object v1, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 138
    sget-object v0, Lcom/sleepycat/b/b/d;->bg:Lcom/sleepycat/b/b/e;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/n/l;->f:I

    .line 139
    sget-object v0, Lcom/sleepycat/b/b/d;->bi:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/l;->i:Z

    .line 141
    iget v0, p0, Lcom/sleepycat/b/n/l;->f:I

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    .line 142
    iget v0, p0, Lcom/sleepycat/b/n/l;->f:I

    new-array v0, v0, [Lcom/sleepycat/b/f/a;

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    .line 143
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sleepycat/b/n/l;->f:I

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    .line 145
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    new-instance v3, Lcom/sleepycat/b/f/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lock Table "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/n/l;->o:Lcom/sleepycat/b/c/ad;

    .line 3508
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 148
    iput-object v0, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    .line 150
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v2, "Locks"

    const-string v3, "Locks held by data operations, latching contention on lock table."

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->k:Lcom/sleepycat/b/p/ai;

    .line 151
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/n/l;->k:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/n/n;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->p:Lcom/sleepycat/b/p/z;

    .line 152
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/n/l;->k:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/n/n;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->q:Lcom/sleepycat/b/p/z;

    .line 4171
    sget-object v0, Lcom/sleepycat/b/b/d;->bl:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/b/n/j;->a(Z)V

    .line 4173
    sget-object v0, Lcom/sleepycat/b/b/d;->bm:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    .line 4181
    sput-boolean v0, Lcom/sleepycat/b/n/l;->s:Z

    .line 156
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 158
    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    .line 164
    :goto_1
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    goto :goto_1
.end method

.method private a(Ljava/util/Set;Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/q;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;",
            "Lcom/sleepycat/b/n/e;",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 1213
    invoke-interface {p2}, Lcom/sleepycat/b/n/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1214
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 1216
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v2

    .line 14246
    iget-object v3, v2, Lcom/sleepycat/b/n/q;->o:Lcom/sleepycat/b/n/e;

    .line 1218
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v2, p3, :cond_3

    .line 1221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    const-string v4, "Transaction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sleepycat/b/n/q;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v4, " owns LockAddr:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v0, "Transaction "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/sleepycat/b/n/q;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v0, " waits for"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    if-nez v3, :cond_2

    .line 1229
    const-string v0, " nothing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :goto_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 1252
    :goto_2
    return-object v0

    .line 1231
    :cond_2
    const-string v0, " LockAddr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1237
    :cond_3
    if-eqz v3, :cond_0

    .line 1238
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1239
    invoke-direct {p0, p1, v3, p3}, Lcom/sleepycat/b/n/l;->a(Ljava/util/Set;Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/q;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_4

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Transaction "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " waits for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1245
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1248
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1252
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/StringBuilder;I)V
    .locals 6

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v0, p2

    .line 1174
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1177
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1181
    const-string v3, "---- LSN: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "----\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1185
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1187
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 634
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 635
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 636
    const/4 v0, 0x0

    move v1, v0

    .line 637
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 639
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 13169
    iget-wide v6, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 639
    aput-wide v6, v3, v1

    move v1, v2

    .line 640
    goto :goto_0

    .line 642
    :cond_0
    return-object v3
.end method

.method private b(JLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;JZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/h;
    .locals 21

    .prologue
    .line 291
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p7

    move/from16 v9, p8

    .line 292
    invoke-virtual/range {v4 .. v9}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZ)Lcom/sleepycat/b/n/f;

    move-result-object v11

    .line 295
    iget-boolean v4, v11, Lcom/sleepycat/b/n/f;->a:Z

    if-nez v4, :cond_0

    iget-object v4, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    sget-object v6, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v4, v6, :cond_2

    .line 297
    :cond_0
    sget-boolean v4, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v4, :cond_1

    if-nez p7, :cond_1

    iget-boolean v4, v11, Lcom/sleepycat/b/n/f;->a:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 298
    :cond_1
    iget-object v4, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    .line 418
    :goto_0
    return-object v4

    .line 302
    :cond_2
    sget-boolean v4, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v4, :cond_5

    .line 7190
    if-eqz p7, :cond_3

    .line 7191
    const/4 v4, 0x1

    .line 302
    :goto_1
    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " latches held while trying to lock, lock table ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 7193
    :cond_3
    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 311
    :cond_5
    sget-boolean v4, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v4, :cond_6

    if-eqz p7, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 313
    :cond_6
    const/4 v10, 0x1

    .line 314
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/n/q;->t()Z

    move-result v19

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/n/q;->p()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 322
    if-nez v19, :cond_a

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 325
    const/4 v4, 0x0

    move/from16 v18, v4

    .line 345
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v4, p5, v6

    if-lez v4, :cond_e

    const/4 v4, 0x1

    move v13, v4

    .line 346
    :goto_4
    if-eqz v13, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 347
    :goto_5
    if-eqz v18, :cond_8

    .line 348
    iget-object v4, v11, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    .line 8250
    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/sleepycat/b/n/q;->o:Lcom/sleepycat/b/n/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :try_start_1
    move-object/from16 v0, p3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/n/q;->p()Z

    move-result v20

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 358
    if-eqz v13, :cond_10

    sub-long v6, v16, v14

    cmp-long v4, v6, p5

    if-ltz v4, :cond_10

    const/4 v4, 0x1

    move v12, v4

    .line 360
    :goto_6
    iget-object v4, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    sget-object v6, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-ne v4, v6, :cond_11

    const/4 v4, 0x1

    move v10, v4

    .line 369
    :goto_7
    if-nez v20, :cond_7

    if-nez v12, :cond_7

    if-eqz v10, :cond_12

    :cond_7
    if-nez v19, :cond_12

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v4 .. v9}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 376
    if-eqz v19, :cond_13

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v1, v2}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;

    move-result-object v4

    .line 378
    iget-boolean v6, v4, Lcom/sleepycat/b/n/f;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_17

    move-object v11, v4

    .line 9250
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/sleepycat/b/n/q;->o:Lcom/sleepycat/b/n/e;

    .line 407
    sget-boolean v4, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v4, :cond_9

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 416
    :cond_9
    iget-object v4, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1, v4}, Lcom/sleepycat/b/n/q;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V

    .line 418
    iget-object v4, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    .line 322
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 326
    :cond_b
    if-eqz v19, :cond_c

    .line 327
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v1, v2}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;

    move-result-object v11

    .line 328
    iget-boolean v4, v11, Lcom/sleepycat/b/n/f;->a:Z

    if-eqz v4, :cond_18

    .line 329
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_3

    .line 334
    :cond_c
    const/4 v5, 0x0

    iget-object v10, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    iget-object v11, v11, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/n/q;->s_()J

    move-result-wide v12

    .line 7844
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sleepycat/b/n/q;->n:J

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-wide/from16 v7, p1

    move-object/from16 v9, p4

    move-object/from16 v18, p9

    invoke-virtual/range {v4 .. v18}, Lcom/sleepycat/b/n/l;->a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    :catchall_0
    move-exception v4

    .line 9250
    const/4 v5, 0x0

    move-object/from16 v0, p3

    iput-object v5, v0, Lcom/sleepycat/b/n/q;->o:Lcom/sleepycat/b/n/e;

    .line 407
    sget-boolean v5, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v5, :cond_d

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 406
    :cond_d
    throw v4

    .line 345
    :cond_e
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_4

    .line 346
    :cond_f
    const-wide/16 v14, 0x0

    goto/16 :goto_5

    .line 352
    :catch_0
    move-exception v4

    .line 353
    :try_start_4
    new-instance v5, Lcom/sleepycat/b/bo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/n/l;->o:Lcom/sleepycat/b/c/ad;

    invoke-direct {v5, v6, v4}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v5

    .line 358
    :cond_10
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_6

    .line 360
    :cond_11
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_7

    .line 369
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 385
    :cond_13
    if-eqz v10, :cond_14

    .line 386
    sget-object v4, Lcom/sleepycat/b/n/l;->r:Lcom/sleepycat/b/c/av;

    throw v4

    .line 389
    :cond_14
    if-eqz v12, :cond_15

    .line 390
    const/4 v5, 0x1

    iget-object v10, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    iget-object v11, v11, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-wide/from16 v7, p1

    move-object/from16 v9, p4

    move-wide/from16 v12, p5

    move-object/from16 v18, p9

    invoke-virtual/range {v4 .. v18}, Lcom/sleepycat/b/n/l;->a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;

    move-result-object v4

    throw v4

    .line 396
    :cond_15
    if-eqz v20, :cond_16

    .line 397
    const/4 v5, 0x0

    iget-object v10, v11, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    iget-object v11, v11, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/n/q;->s_()J

    move-result-wide v12

    .line 8844
    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sleepycat/b/n/q;->n:J

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-wide/from16 v7, p1

    move-object/from16 v9, p4

    move-object/from16 v18, p9

    .line 397
    invoke-virtual/range {v4 .. v18}, Lcom/sleepycat/b/n/l;->a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;

    move-result-object v4

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_16
    move-object v4, v11

    :cond_17
    move-object v11, v4

    .line 404
    goto/16 :goto_5

    :cond_18
    move/from16 v18, v10

    goto/16 :goto_3
.end method


# virtual methods
.method final a(J)I
    .locals 3

    .prologue
    .line 190
    long-to-int v0, p1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/n/l;->f:I

    rem-int/2addr v0, v1

    return v0
.end method

.method abstract a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;
.end method

.method public abstract a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;
.end method

.method protected final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;I)Lcom/sleepycat/b/n/f;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 987
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v0, p4

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 988
    sget-boolean v1, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for txn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14169
    iget-wide v2, p2, Lcom/sleepycat/b/n/q;->k:J

    .line 988
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    invoke-interface {v0, p2, v1, p4}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V

    .line 999
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    invoke-interface {v0, p2, v1, p4}, Lcom/sleepycat/b/n/e;->c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    .line 1005
    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZI)Lcom/sleepycat/b/n/f;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZ)Lcom/sleepycat/b/n/f;
.end method

.method final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZI)Lcom/sleepycat/b/n/f;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 494
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 497
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v8, v0, p6

    .line 498
    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 499
    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lcom/sleepycat/b/n/x;

    invoke-direct {v0}, Lcom/sleepycat/b/n/x;-><init>()V

    .line 501
    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    sget-wide v2, Lcom/sleepycat/b/n/l;->b:J

    invoke-virtual {v1, v2, v3, p6}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 510
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/q;ZZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/f;

    move-result-object v1

    .line 513
    iget-object v2, v1, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    if-eq v2, v0, :cond_1

    .line 515
    iget-object v0, v1, Lcom/sleepycat/b/n/f;->b:Lcom/sleepycat/b/n/e;

    .line 516
    invoke-interface {v8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    sget-wide v4, Lcom/sleepycat/b/n/l;->n:J

    invoke-virtual {v2, v4, v5, p6}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 521
    :cond_1
    iget-object v2, v1, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    .line 522
    const/4 v1, 0x0

    .line 525
    sget-object v3, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    if-ne v2, v3, :cond_4

    .line 527
    :cond_2
    invoke-virtual {p2, p1, p3, v2}, Lcom/sleepycat/b/n/q;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V

    move v1, v7

    .line 536
    :cond_3
    :goto_0
    new-instance v3, Lcom/sleepycat/b/n/f;

    invoke-direct {v3, v0, v2, v1}, Lcom/sleepycat/b/n/f;-><init>(Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/h;Z)V

    return-object v3

    .line 529
    :cond_4
    sget-object v3, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    if-ne v2, v3, :cond_5

    move v1, v7

    .line 530
    goto :goto_0

    .line 531
    :cond_5
    sget-object v3, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-eq v2, v3, :cond_3

    .line 534
    iget-object v3, p0, Lcom/sleepycat/b/n/l;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    goto :goto_0
.end method

.method public final a(JLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;JZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/h;
    .locals 3

    .prologue
    .line 243
    sget-boolean v0, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_0
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    if-ne p4, v0, :cond_1

    .line 247
    sget-object v0, Lcom/sleepycat/b/n/h;->h:Lcom/sleepycat/b/n/h;

    .line 278
    :goto_0
    return-object v0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->o:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p9, :cond_3

    .line 4677
    invoke-virtual {p9}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 260
    if-eqz v0, :cond_3

    .line 5496
    iget-object v0, p9, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 260
    sget-object v1, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6286
    iget-boolean v0, p3, Lcom/sleepycat/b/n/q;->r:Z

    .line 260
    if-nez v0, :cond_2

    .line 7161
    iget-boolean v0, p4, Lcom/sleepycat/b/n/o;->h:Z

    .line 260
    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p3}, Lcom/sleepycat/b/n/q;->h_()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Locker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 274
    :cond_3
    monitor-enter p3

    .line 276
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/sleepycat/b/n/l;->b(JLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;JZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/h;

    move-result-object v0

    .line 278
    monitor-exit p3

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sleepycat/b/n/l;->f:I

    if-ge v0, v2, :cond_0

    .line 1162
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sleepycat/b/f/a;->a()V

    .line 1164
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/StringBuilder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sleepycat/b/f/a;->c()V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    throw v1

    .line 1169
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract a(JLcom/sleepycat/b/n/q;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Long;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/sleepycat/b/p/ai;Z)V
.end method

.method abstract a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z
.end method

.method final b(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;
    .locals 8

    .prologue
    .line 578
    sget-boolean v2, Lcom/sleepycat/b/n/l;->s:Z

    if-eqz v2, :cond_3

    .line 579
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "++++++++++ begin lock table dump ++++++++++"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/sleepycat/b/n/l;->f:I

    if-ge v2, v3, :cond_2

    .line 581
    const/4 v3, 0x0

    .line 582
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 584
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-direct {p0, v5, v2}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/StringBuilder;I)V

    .line 586
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    const/4 v3, 0x1

    .line 593
    :cond_0
    if-nez v3, :cond_1

    .line 594
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t dump locktable "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :catch_0
    move-exception v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 597
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "++++++++++ end lock table dump ++++++++++"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    if-eqz p1, :cond_6

    const-string v2, "Lock"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, " expired. Locker "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, ": waited for lock"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    if-eqz p14, :cond_4

    .line 606
    const-string v2, " on database="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p14 .. p14}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_4
    const-string v2, " LockAddr:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const-string v2, " LSN="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, " type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    const-string v2, " grant="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 612
    const-string v2, " timeoutMillis="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, " startTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p10

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, " endTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 615
    invoke-interface {p7}, Lcom/sleepycat/b/n/e;->b()Ljava/util/Set;

    move-result-object v4

    .line 616
    invoke-interface {p7}, Lcom/sleepycat/b/n/e;->a()Ljava/util/List;

    move-result-object v5

    .line 617
    const-string v2, "\nOwners: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    const-string v2, "\nWaiters: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10199
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10200
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10201
    invoke-direct {p0, v2, p7, p2}, Lcom/sleepycat/b/n/l;->a(Ljava/util/Set;Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/q;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10202
    if-eqz v2, :cond_7

    .line 620
    :goto_3
    if-eqz v2, :cond_5

    .line 621
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 623
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10665
    iget-boolean v2, p0, Lcom/sleepycat/b/n/l;->i:Z

    if-eqz v2, :cond_8

    new-instance v2, Lcom/sleepycat/b/r;

    invoke-direct {v2, p2, v3}, Lcom/sleepycat/b/r;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    .line 627
    :goto_4
    invoke-static {v4}, Lcom/sleepycat/b/n/l;->a(Ljava/util/Collection;)[J

    move-result-object v3

    .line 12162
    iput-object v3, v2, Lcom/sleepycat/b/an;->a:[J

    .line 628
    invoke-static {v5}, Lcom/sleepycat/b/n/l;->a(Ljava/util/Collection;)[J

    move-result-object v3

    .line 12181
    iput-object v3, v2, Lcom/sleepycat/b/an;->b:[J

    .line 12200
    move-wide/from16 v0, p8

    iput-wide v0, v2, Lcom/sleepycat/b/an;->c:J

    .line 630
    return-object v2

    .line 601
    :cond_6
    const-string v2, "Transaction"

    goto/16 :goto_2

    .line 10205
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 10665
    :cond_8
    new-instance v2, Lcom/sleepycat/b/as;

    invoke-direct {v2, p2, v3}, Lcom/sleepycat/b/as;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    goto :goto_4

    .line 623
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11653
    iget-boolean v2, p0, Lcom/sleepycat/b/n/l;->i:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/sleepycat/b/r;

    invoke-direct {v2, p2, v3}, Lcom/sleepycat/b/r;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    new-instance v2, Lcom/sleepycat/b/bu;

    invoke-direct {v2, p2, v3}, Lcom/sleepycat/b/bu;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public abstract b(JLcom/sleepycat/b/n/q;)V
.end method

.method public abstract b(Ljava/lang/Long;)Z
.end method

.method final c(Ljava/lang/Long;)I
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/n/l;->f:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public final c(JLcom/sleepycat/b/n/q;)Z
    .locals 3

    .prologue
    .line 694
    monitor-enter p3

    .line 695
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/n/l;->a(JLcom/sleepycat/b/n/q;)Ljava/util/Set;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x0

    monitor-exit p3

    .line 722
    :goto_0
    return v0

    .line 702
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 708
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 710
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/q;

    .line 714
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 716
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 718
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    goto :goto_1

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 716
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 722
    :cond_2
    const/4 v0, 0x1

    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
