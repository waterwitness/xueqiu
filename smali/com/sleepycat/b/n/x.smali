.class public Lcom/sleepycat/b/n/x;
.super Lcom/sleepycat/b/n/j;
.source "ThinLockImpl.java"

# interfaces
.implements Lcom/sleepycat/b/n/e;


# static fields
.field static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sleepycat/b/n/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/x;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/sleepycat/b/n/j;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/q;ZZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/f;
    .locals 7

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-eq v0, p2, :cond_0

    .line 120
    new-instance v0, Lcom/sleepycat/b/n/i;

    new-instance v1, Lcom/sleepycat/b/n/j;

    invoke-direct {v1, p0}, Lcom/sleepycat/b/n/j;-><init>(Lcom/sleepycat/b/n/j;)V

    invoke-direct {v0, v1}, Lcom/sleepycat/b/n/i;-><init>(Lcom/sleepycat/b/n/j;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 121
    invoke-interface/range {v0 .. v6}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/q;ZZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/f;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-nez v0, :cond_1

    .line 127
    iput-object p2, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    .line 128
    iput-object p1, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    .line 129
    sget-object v0, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    .line 145
    :goto_1
    new-instance v1, Lcom/sleepycat/b/n/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/sleepycat/b/n/f;-><init>(Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/h;Z)V

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/o;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/p;

    move-result-object v0

    .line 2069
    iget-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 134
    if-eqz v1, :cond_3

    .line 3069
    iget-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 138
    sget-boolean v2, Lcom/sleepycat/b/n/x;->c:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_2
    iput-object v1, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    .line 3088
    iget-boolean v0, v0, Lcom/sleepycat/b/n/p;->h:Z

    .line 140
    if-eqz v0, :cond_3

    sget-object v0, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-eq p1, v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-ne p1, v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    if-ne p2, v2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v2, p2}, Lcom/sleepycat/b/n/o;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/p;

    move-result-object v2

    .line 1088
    iget-boolean v2, v2, Lcom/sleepycat/b/n/p;->h:Z

    .line 65
    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 72
    goto :goto_0

    :cond_3
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            "Lcom/sleepycat/b/c/ao;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-ne p1, v1, :cond_0

    .line 153
    iput-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    .line 154
    iput-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/n/q;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    .line 4161
    iget-boolean v0, v0, Lcom/sleepycat/b/n/o;->h:Z

    .line 171
    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    sget-object v1, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/n/x;->b:Lcom/sleepycat/b/n/o;

    .line 175
    :cond_0
    return-void

    .line 172
    :cond_1
    sget-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    .line 3286
    iget-boolean v0, v0, Lcom/sleepycat/b/n/q;->r:Z

    .line 162
    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->u()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    .line 167
    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const-string v1, " ThinLockAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " Owner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/sleepycat/b/n/x;->d()I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, " (none)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :goto_0
    const-string v1, " Waiters: (none)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/x;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
