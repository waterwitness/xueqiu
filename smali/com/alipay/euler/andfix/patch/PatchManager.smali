.class public Lcom/alipay/euler/andfix/patch/PatchManager;
.super Ljava/lang/Object;
.source "PatchManager.java"


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch"

.field private static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final SP_VERSION:Ljava/lang/String; = "version"

.field private static final SUFFIX:Ljava/lang/String; = ".apatch"

.field private static final TAG:Ljava/lang/String; = "PatchManager"


# instance fields
.field private final mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

.field private final mContext:Landroid/content/Context;

.field private final mLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mPatchDir:Ljava/io/File;

.field private final mPatchs:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/alipay/euler/andfix/patch/Patch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/alipay/euler/andfix/AndFixManager;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/euler/andfix/AndFixManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "apatch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;
    .locals 5

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".apatch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    new-instance v0, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-direct {v0, p1}, Lcom/alipay/euler/andfix/patch/Patch;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 129
    :goto_1
    const-string v2, "PatchManager"

    const-string v3, "addPatch"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private cleanPatch()V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 137
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 138
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v4, v3}, Lcom/alipay/euler/andfix/AndFixManager;->removeOptFile(Ljava/io/File;)V

    .line 139
    invoke-static {v3}, Lcom/alipay/euler/andfix/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    const-string v4, "PatchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " delete error."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method private initPatchs()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 111
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 112
    invoke-direct {p0, v3}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V
    .locals 5

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string v3, "*"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 236
    :goto_1
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p1, v0}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 238
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    goto :goto_1

    .line 241
    :cond_2
    return-void
.end method


# virtual methods
.method public addPatch(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    const-string v0, "PatchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "patch ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] has be loaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 163
    invoke-direct {p0, v1}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/io/File;)Lcom/alipay/euler/andfix/patch/Patch;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->loadPatch(Lcom/alipay/euler/andfix/patch/Patch;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "PatchManager"

    const-string v1, "patch dir create error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    const-string v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatch()V

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->initPatchs()V

    goto :goto_0
.end method

.method public loadPatch()V
    .locals 7

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    const-string v1, "*"

    iget-object v2, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/Patch;

    .line 211
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v1

    .line 212
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 214
    iget-object v4, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method public loadPatch(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mLoaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mPatchs:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/euler/andfix/patch/Patch;

    .line 194
    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getPatchNames()Ljava/util/Set;

    move-result-object v2

    .line 195
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/alipay/euler/andfix/patch/Patch;->getClasses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mAndFixManager:Lcom/alipay/euler/andfix/AndFixManager;

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/Patch;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0, p2, v2}, Lcom/alipay/euler/andfix/AndFixManager;->fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method public removeAllPatch()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/PatchManager;->cleanPatch()V

    .line 174
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/PatchManager;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method
