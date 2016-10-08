.class public Lcom/alipay/euler/andfix/patch/Patch;
.super Ljava/lang/Object;
.source "Patch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/euler/andfix/patch/Patch;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASSES:Ljava/lang/String; = "-Classes"

.field private static final CREATED_TIME:Ljava/lang/String; = "Created-Time"

.field private static final ENTRY_NAME:Ljava/lang/String; = "META-INF/PATCH.MF"

.field private static final PATCH_CLASSES:Ljava/lang/String; = "Patch-Classes"

.field private static final PATCH_NAME:Ljava/lang/String; = "Patch-Name"


# instance fields
.field private mClassesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFile:Ljava/io/File;

.field private mName:Ljava/lang/String;

.field private mTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    .line 67
    invoke-direct {p0}, Lcom/alipay/euler/andfix/patch/Patch;->init()V

    .line 68
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 72
    .line 75
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    const-string v0, "META-INF/PATCH.MF"

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 78
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, v1}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    .line 80
    const-string v0, "Patch-Name"

    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/Date;

    const-string v4, "Created-Time"

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    .line 87
    invoke-virtual {v3}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    .line 89
    invoke-virtual {v0}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    const-string v6, "-Classes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {v3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 92
    const-string v6, "Patch-Classes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    iget-object v5, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 106
    :cond_1
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0

    .line 95
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    .line 106
    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 111
    :cond_5
    return-void

    .line 103
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/alipay/euler/andfix/patch/Patch;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/alipay/euler/andfix/patch/Patch;

    invoke-virtual {p0, p1}, Lcom/alipay/euler/andfix/patch/Patch;->compareTo(Lcom/alipay/euler/andfix/patch/Patch;)I

    move-result v0

    return v0
.end method

.method public getClasses(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mClassesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/euler/andfix/patch/Patch;->mTime:Ljava/util/Date;

    return-object v0
.end method
