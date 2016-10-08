.class public final Lcom/xueqiu/android/community/m;
.super Ljava/lang/Object;
.source "TopicDataManager.java"


# static fields
.field private static c:Lcom/xueqiu/android/community/m;


# instance fields
.field public a:Lcom/xueqiu/android/common/model/PagedGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/common/model/PagedGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/xueqiu/android/community/m;

    invoke-direct {v0}, Lcom/xueqiu/android/community/m;-><init>()V

    sput-object v0, Lcom/xueqiu/android/community/m;->c:Lcom/xueqiu/android/community/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 36
    iput-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 47
    return-void
.end method

.method public static a(J)Lcom/xueqiu/android/common/model/PagedGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    const-string v0, "tpoic"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 198
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "topic.data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 221
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-static {v2}, Lcom/xueqiu/android/base/util/k;->c(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/o;

    .line 207
    if-nez v0, :cond_1

    move-object v0, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_1
    new-instance v1, Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-direct {v1}, Lcom/xueqiu/android/common/model/PagedGroup;-><init>()V

    .line 212
    iget-wide v2, v0, Lcom/xueqiu/android/community/o;->d:J

    iput-wide v2, v1, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    .line 213
    iget v2, v0, Lcom/xueqiu/android/community/o;->b:I

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 214
    iget v2, v0, Lcom/xueqiu/android/community/o;->a:I

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 215
    iget v2, v0, Lcom/xueqiu/android/community/o;->c:I

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 217
    invoke-virtual {v0}, Lcom/xueqiu/android/community/o;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 221
    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/m;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/common/model/PagedGroup;)Lcom/xueqiu/android/common/model/PagedGroup;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2103
    if-eqz p3, :cond_7

    .line 2106
    const-string v0, "time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2107
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    if-nez v0, :cond_0

    .line 2108
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 2116
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    .line 2117
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-static {v0}, Lcom/xueqiu/android/community/m;->a(Lcom/xueqiu/android/common/model/PagedGroup;)V

    .line 2118
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 2131
    :goto_1
    return-object v0

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    iget-wide v0, v0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    iget-wide v2, p3, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2110
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_0

    .line 2111
    :cond_1
    invoke-virtual {p3}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2112
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_0

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->a:Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-static {v0, p3}, Lcom/xueqiu/android/community/m;->a(Lcom/xueqiu/android/common/model/PagedGroup;Lcom/xueqiu/android/common/model/PagedGroup;)V

    goto :goto_0

    .line 2119
    :cond_3
    const-string v0, "hot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2120
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    if-nez v0, :cond_4

    .line 2121
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    .line 2129
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    .line 2130
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-static {v0}, Lcom/xueqiu/android/community/m;->a(Lcom/xueqiu/android/common/model/PagedGroup;)V

    .line 2131
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_1

    .line 2122
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    iget-wide v0, v0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    iget-wide v2, p3, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 2123
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_2

    .line 2124
    :cond_5
    invoke-virtual {p3}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 2125
    iput-object p3, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    goto :goto_2

    .line 2127
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/m;->b:Lcom/xueqiu/android/common/model/PagedGroup;

    invoke-static {v0, p3}, Lcom/xueqiu/android/community/m;->a(Lcom/xueqiu/android/common/model/PagedGroup;Lcom/xueqiu/android/common/model/PagedGroup;)V

    goto :goto_2

    .line 2133
    :cond_7
    const/4 v0, 0x0

    .line 18
    goto :goto_1
.end method

.method public static a()Lcom/xueqiu/android/community/m;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xueqiu/android/community/m;->c:Lcom/xueqiu/android/community/m;

    return-object v0
.end method

.method private static a(Lcom/xueqiu/android/common/model/PagedGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "tpoic"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/k;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_1

    .line 178
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "topic.data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcom/xueqiu/android/community/o;

    invoke-direct {v1}, Lcom/xueqiu/android/community/o;-><init>()V

    .line 185
    iget-wide v2, p0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    iput-wide v2, v1, Lcom/xueqiu/android/community/o;->d:J

    .line 186
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v2

    iput v2, v1, Lcom/xueqiu/android/community/o;->b:I

    .line 187
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/PagedGroup;->getMaxPage()I

    move-result v2

    iput v2, v1, Lcom/xueqiu/android/community/o;->a:I

    .line 188
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/PagedGroup;->getTotalCount()I

    move-result v2

    iput v2, v1, Lcom/xueqiu/android/community/o;->c:I

    .line 189
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/PagedGroup;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 190
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/o;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1224
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1228
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1229
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1230
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1231
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1234
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Lcom/xueqiu/android/common/model/PagedGroup;Lcom/xueqiu/android/common/model/PagedGroup;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-wide v0, p0, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    iget-wide v2, p1, Lcom/xueqiu/android/common/model/PagedGroup;->mID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1137
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    .line 1138
    :cond_2
    const/4 p1, 0x0

    .line 163
    :cond_3
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedGroup;->getTotalCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setTotalCount(I)V

    .line 164
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedGroup;->getMaxPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setMaxPage(I)V

    .line 165
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedGroup;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/model/PagedGroup;->setCurrentPage(I)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/model/PagedGroup;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1141
    :cond_4
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedGroup;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1142
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1143
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 1144
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/model/PagedGroup;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 1145
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/model/PagedGroup;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/Status;

    .line 1146
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    .line 1147
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1144
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method
