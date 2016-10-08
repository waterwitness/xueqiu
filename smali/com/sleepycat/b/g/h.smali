.class final Lcom/sleepycat/b/g/h;
.super Ljava/lang/Object;
.source "FSyncManager.java"


# instance fields
.field final a:Lcom/sleepycat/b/c/ad;

.field final b:J

.field final c:Ljava/lang/Object;

.field volatile d:Z

.field e:Lcom/sleepycat/b/g/i;

.field f:I

.field g:J

.field final h:I

.field final i:J

.field final j:Z

.field final k:Lcom/sleepycat/b/p/ai;

.field final l:Lcom/sleepycat/b/p/z;

.field final m:Lcom/sleepycat/b/p/d;

.field final n:Lcom/sleepycat/b/p/z;

.field final o:Lcom/sleepycat/b/p/z;

.field final p:Lcom/sleepycat/b/p/z;

.field final q:Lcom/sleepycat/b/p/z;

.field final r:Lcom/sleepycat/b/p/z;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 123
    sget-object v1, Lcom/sleepycat/b/b/d;->T:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/h;->b:J

    .line 4392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 125
    sget-object v1, Lcom/sleepycat/b/b/d;->U:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->b(Lcom/sleepycat/b/b/c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/h;->i:J

    .line 5392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 127
    sget-object v1, Lcom/sleepycat/b/b/d;->V:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/h;->h:I

    .line 130
    iget-wide v0, p0, Lcom/sleepycat/b/g/h;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/g/h;->h:I

    if-nez v0, :cond_1

    .line 131
    :cond_0
    iput-boolean v4, p0, Lcom/sleepycat/b/g/h;->j:Z

    .line 136
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    .line 139
    iput-boolean v4, p0, Lcom/sleepycat/b/g/h;->d:Z

    .line 140
    new-instance v0, Lcom/sleepycat/b/g/i;

    iget-wide v2, p0, Lcom/sleepycat/b/g/h;->b:J

    invoke-direct {v0, v2, v3, p1}, Lcom/sleepycat/b/g/i;-><init>(JLcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    .line 142
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "FSyncManager"

    const-string v2, "FSyncManager statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    .line 144
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->r:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->l:Lcom/sleepycat/b/p/z;

    .line 145
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->q:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->m:Lcom/sleepycat/b/p/d;

    .line 146
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->s:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->n:Lcom/sleepycat/b/p/z;

    .line 147
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->v:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->o:Lcom/sleepycat/b/p/z;

    .line 148
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->y:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->q:Lcom/sleepycat/b/p/z;

    .line 150
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->x:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->p:Lcom/sleepycat/b/p/z;

    .line 152
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->w:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/h;->r:Lcom/sleepycat/b/p/z;

    .line 154
    iput v4, p0, Lcom/sleepycat/b/g/h;->f:I

    .line 155
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/h;->j:Z

    goto :goto_0
.end method
