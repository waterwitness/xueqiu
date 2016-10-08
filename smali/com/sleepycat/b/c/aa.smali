.class public final Lcom/sleepycat/b/c/aa;
.super Ljava/lang/Object;
.source "DupKeyData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;",
            "Ljava/util/Comparator",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/sleepycat/b/c/aa;->a:Ljava/util/Comparator;

    .line 175
    iput-object p2, p0, Lcom/sleepycat/b/c/aa;->b:Ljava/util/Comparator;

    .line 176
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 167
    move-object v0, p1

    check-cast v0, [B

    move-object v3, p2

    check-cast v3, [B

    .line 1182
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v6

    .line 1184
    if-ne v6, v8, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 1187
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/sleepycat/c/e;->d([BI)I

    move-result v7

    .line 1189
    if-ne v7, v8, :cond_1

    array-length v4, v3

    add-int/lit8 v5, v4, -0x1

    .line 1193
    :goto_1
    iget-object v4, p0, Lcom/sleepycat/b/c/aa;->a:Ljava/util/Comparator;

    if-nez v4, :cond_2

    move v4, v1

    .line 1194
    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/l/w;->a([BII[BII)I

    move-result v4

    .line 1204
    :goto_2
    if-eqz v4, :cond_3

    move v0, v4

    .line 1211
    :goto_3
    return v0

    :cond_0
    move v2, v6

    .line 1184
    goto :goto_0

    :cond_1
    move v5, v7

    .line 1189
    goto :goto_1

    .line 1198
    :cond_2
    new-array v4, v2, [B

    .line 1199
    new-array v9, v5, [B

    .line 1200
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1201
    invoke-static {v3, v1, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1202
    iget-object v10, p0, Lcom/sleepycat/b/c/aa;->a:Ljava/util/Comparator;

    invoke-interface {v10, v4, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_2

    .line 1207
    :cond_3
    if-eq v6, v8, :cond_4

    if-ne v7, v8, :cond_7

    .line 1208
    :cond_4
    if-ne v6, v7, :cond_5

    move v0, v1

    .line 1209
    goto :goto_3

    .line 1211
    :cond_5
    if-ne v6, v8, :cond_6

    move v0, v8

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 1215
    :cond_7
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v4

    .line 1217
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v6

    .line 1219
    array-length v7, v0

    sub-int/2addr v7, v2

    sub-int v8, v7, v4

    .line 1220
    array-length v4, v3

    sub-int/2addr v4, v5

    sub-int v11, v4, v6

    .line 1222
    iget-object v4, p0, Lcom/sleepycat/b/c/aa;->b:Ljava/util/Comparator;

    if-nez v4, :cond_8

    move-object v6, v0

    move v7, v2

    move-object v9, v3

    move v10, v5

    .line 1223
    invoke-static/range {v6 .. v11}, Lcom/sleepycat/b/l/w;->a([BII[BII)I

    move-result v0

    goto :goto_3

    .line 1227
    :cond_8
    new-array v4, v8, [B

    .line 1228
    new-array v6, v11, [B

    .line 1229
    invoke-static {v0, v2, v4, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1231
    invoke-static {v3, v5, v6, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    iget-object v0, p0, Lcom/sleepycat/b/c/aa;->b:Ljava/util/Comparator;

    invoke-interface {v0, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method
